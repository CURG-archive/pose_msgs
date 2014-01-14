/*
    Copyright (c) <year>, <copyright holder>
    All rights reserved.

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are met:
        * Redistributions of source code must retain the above copyright
        notice, this list of conditions and the following disclaimer.
        * Redistributions in binary form must reproduce the above copyright
        notice, this list of conditions and the following disclaimer in the
        documentation and/or other materials provided with the distribution.
        * Neither the name of the <organization> nor the
        names of its contributors may be used to endorse or promote products
        derived from this software without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY <copyright holder> ''AS IS'' AND ANY
    EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
    WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
    DISCLAIMED. IN NO EVENT SHALL <copyright holder> BE LIABLE FOR ANY
    DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
    (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
    LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
    ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
    (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
    SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

*/


#include <pose_msgs/static_pose_node.h>
#include <pose_msgs/pose_msgs_defaults.h>
#include <boost/filesystem/operations.hpp>
#include <v4r/utils/filesystemhdl.h>
#include <v4r/geometry/pose.h>

int main (int argc, char **argv)
{
    ros::init (argc, argv, "static_pose");
    ros::NodeHandle n;
    StaticPoseNode pose(n);
    if (pose.sync_mode()) {
        ros::spin();
    } else {
        ros::Rate rate ( pose.frequency() );
        while ( ros::ok() )
        {
            pose.publishTf(ros::Time::now());
            ros::spinOnce();
            rate.sleep();
        }
    }
    return 0;
}

StaticPoseNode::StaticPoseNode(ros::NodeHandle & n)
        : n_(n)
        , n_param_("~")
        , frequency_(FREQUENCY)
        , publishTF_(PUBLISH_TF)
        , sync_with_pub_(SYNC_WITH_A_PUBLISHER) {

    n_param_.getParam ( "frequency", frequency_ );
    ROS_INFO("\tfrequency: %5.2f", frequency_);

    std::string poseFile(POSE_FILE);
    n_param_.getParam ( "pose_file", poseFile );
    ROS_INFO("\tpose_file: %s", poseFile.c_str());


    std::string poseFileFolder(POSE_FILE_FOLDER);
    n_param_.getParam ( "pose_file_folder", poseFileFolder );
    ROS_INFO("\tpose_file_folder: %s", poseFileFolder.c_str());

    std::string poseFileFolderRegex(POSE_FILE_REGEX);
    n_param_.getParam ( "pose_file_folder_regex", poseFileFolderRegex );
    ROS_INFO("\tpose_file_folder_regex: %s", poseFileFolderRegex.c_str());

    n_param_.getParam ( "publish_tf", publishTF_ );
    ROS_INFO("\tpublish_tf: %s", (publishTF_?"true":"false") );


    n_param_.getParam ( "sync", sync_with_pub_ );
    ROS_INFO("\tsync: %s", (sync_with_pub_?"true":"false") );

    if (sync_with_pub_) {
        sub_ = n_.subscribe("camera_info", 1000, &StaticPoseNode::callbackSync, this);
    }

    readFile(poseFile);
    readFileFolder(poseFileFolder, poseFileFolderRegex);

    initService();
}

void StaticPoseNode::callbackSync(const sensor_msgs::CameraInfoConstPtr &msg) {
    publishTf(msg->header.stamp);
}

void StaticPoseNode::publishTf(const ros::Time &tstamp)
{
    for (unsigned int i = 0; i < transforms_.size(); i++) {
        pose_msgs::Transform &t = transforms_[i];
        V4R::PoseD pose(&t.rotation.x, &t.translation.x);
        cv::Mat_<double> q = pose.quaterion();
        tf::Quaternion rot(q(0),q(1), q(2), q(3));
        tf::Vector3 tra(pose.x(), pose.y(), pose.z());
        tf::StampedTransform st( tf::Transform(rot, tra), tstamp, t.frameSrc, t.frameDes);
        transformBroadcaster_.sendTransform (st );
    }
}

bool StaticPoseNode::existsFile (const std::string &file) {
    boost::filesystem::path dir_path = boost::filesystem::complete ( boost::filesystem::path ( file, boost::filesystem::native ) );
    if ( boost::filesystem::exists ( dir_path ) && boost::filesystem::is_regular_file(dir_path)) {
        return true;
    } else {
        return false;
    }
}

void StaticPoseNode::readFile(const std::string &file) {
    if (!existsFile(file)) {
        ROS_INFO("The pose file: %s does not exist, I will create a empty one", file.c_str());
        V4R::PoseD pose;
        pose.clear();
        pose.write(file, "frameSrc", "frameDes");
    }

    pose_msgs::Transform t;
    V4R::PoseD pose;
    pose.read(file, t.frameSrc, t.frameDes);
    if (t.frameSrc.empty() || t.frameDes.empty()) {
        ROS_ERROR("\tPose file error: %s", file.c_str() );
        return;
    }
    ROS_INFO("\tPoseFile: %s", file.c_str() );
    ROS_INFO("\tPose: %s -> %s  %s ", t.frameSrc.c_str() , t.frameDes.c_str() , pose.human_readable().c_str() );
    pose.copyTo(&t.rotation.x, &t.translation.x);
    transforms_.push_back(t);
}

void StaticPoseNode::readFileFolder(const std::string &folder, const std::string &regx) {
    if (folder.empty()) return;
    std::vector<std::string> files;
    V4R::FS::getFilesInFolder(folder, files, regx);
    for (unsigned int i = 0; i < files.size(); i++) {
        readFile(files[i]);
    }
}

void StaticPoseNode::initService() {
    service_ = n_param_.advertiseService(TRANSFORMATIONS_SERVICE, &StaticPoseNode::response, this);
}
bool StaticPoseNode::response (pose_msgs::GetPoses::Request &req, pose_msgs::GetPoses::Response &resp)
{
    resp.transforms.header.stamp = ros::Time::now();
    resp.transforms.transforms = transforms_;
    return true;
}
