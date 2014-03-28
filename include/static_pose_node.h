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

#ifndef STATIC_POSE_NODE_H
#define STATIC_POSE_NODE_H


#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <pose_msgs/GetPoses.h>
#include <pose_msgs/Transform.h>
#include <sensor_msgs/CameraInfo.h>


class StaticPoseNode {
public:
    StaticPoseNode(ros::NodeHandle & n);

    double frequency() {
        return frequency_;
    }
    void publishTf(const ros::Time &tstamp) ;
    bool sync_mode() {return sync_with_pub_;};
private:
    ros::NodeHandle n_;
    ros::NodeHandle n_param_;
    double frequency_;
    ros::ServiceServer service_;
    bool publishTF_;
    bool sync_with_pub_;
    std::vector<pose_msgs::Transform> transforms_;
    tf::TransformBroadcaster transformBroadcaster_;
    ros::Subscriber sub_;
    
    void callbackSync(const sensor_msgs::CameraInfoConstPtr &msg);
     
    void initService();
    void readFile(const std::string &file);
    void readFileFolder(const std::string &folder, const std::string &regx);
    bool existsFile (const std::string &file);
    bool response (pose_msgs::GetPoses::Request &req, pose_msgs::GetPoses::Response &resp);
};

#endif // STATIC_POSE_NODE_H
