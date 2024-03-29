//#line 2 "/opt/ros/noetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"
// *********************************************************
//
// File autogenerated for the multiwii package
// by the dynamic_reconfigure package.
// Please do not edit.
//
// ********************************************************/

#ifndef __multiwii__UPDATERATESCONFIG_H__
#define __multiwii__UPDATERATESCONFIG_H__

#if __cplusplus >= 201103L
#define DYNAMIC_RECONFIGURE_FINAL final
#else
#define DYNAMIC_RECONFIGURE_FINAL
#endif

#include <dynamic_reconfigure/config_tools.h>
#include <limits>
#include <ros/node_handle.h>
#include <dynamic_reconfigure/ConfigDescription.h>
#include <dynamic_reconfigure/ParamDescription.h>
#include <dynamic_reconfigure/Group.h>
#include <dynamic_reconfigure/config_init_mutex.h>
#include <boost/any.hpp>

namespace multiwii
{
  class UpdateRatesConfigStatics;

  class UpdateRatesConfig
  {
  public:
    class AbstractParamDescription : public dynamic_reconfigure::ParamDescription
    {
    public:
      AbstractParamDescription(std::string n, std::string t, uint32_t l,
          std::string d, std::string e)
      {
        name = n;
        type = t;
        level = l;
        description = d;
        edit_method = e;
      }
      virtual ~AbstractParamDescription() = default;

      virtual void clamp(UpdateRatesConfig &config, const UpdateRatesConfig &max, const UpdateRatesConfig &min) const = 0;
      virtual void calcLevel(uint32_t &level, const UpdateRatesConfig &config1, const UpdateRatesConfig &config2) const = 0;
      virtual void fromServer(const ros::NodeHandle &nh, UpdateRatesConfig &config) const = 0;
      virtual void toServer(const ros::NodeHandle &nh, const UpdateRatesConfig &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, UpdateRatesConfig &config) const = 0;
      virtual void toMessage(dynamic_reconfigure::Config &msg, const UpdateRatesConfig &config) const = 0;
      virtual void getValue(const UpdateRatesConfig &config, boost::any &val) const = 0;
    };

    typedef boost::shared_ptr<AbstractParamDescription> AbstractParamDescriptionPtr;
    typedef boost::shared_ptr<const AbstractParamDescription> AbstractParamDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template <class T>
    class ParamDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractParamDescription
    {
    public:
      ParamDescription(std::string a_name, std::string a_type, uint32_t a_level,
          std::string a_description, std::string a_edit_method, T UpdateRatesConfig::* a_f) :
        AbstractParamDescription(a_name, a_type, a_level, a_description, a_edit_method),
        field(a_f)
      {}

      T UpdateRatesConfig::* field;

      virtual void clamp(UpdateRatesConfig &config, const UpdateRatesConfig &max, const UpdateRatesConfig &min) const override
      {
        if (config.*field > max.*field)
          config.*field = max.*field;

        if (config.*field < min.*field)
          config.*field = min.*field;
      }

      virtual void calcLevel(uint32_t &comb_level, const UpdateRatesConfig &config1, const UpdateRatesConfig &config2) const override
      {
        if (config1.*field != config2.*field)
          comb_level |= level;
      }

      virtual void fromServer(const ros::NodeHandle &nh, UpdateRatesConfig &config) const override
      {
        nh.getParam(name, config.*field);
      }

      virtual void toServer(const ros::NodeHandle &nh, const UpdateRatesConfig &config) const override
      {
        nh.setParam(name, config.*field);
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, UpdateRatesConfig &config) const override
      {
        return dynamic_reconfigure::ConfigTools::getParameter(msg, name, config.*field);
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const UpdateRatesConfig &config) const override
      {
        dynamic_reconfigure::ConfigTools::appendParameter(msg, name, config.*field);
      }

      virtual void getValue(const UpdateRatesConfig &config, boost::any &val) const override
      {
        val = config.*field;
      }
    };

    class AbstractGroupDescription : public dynamic_reconfigure::Group
    {
      public:
      AbstractGroupDescription(std::string n, std::string t, int p, int i, bool s)
      {
        name = n;
        type = t;
        parent = p;
        state = s;
        id = i;
      }

      virtual ~AbstractGroupDescription() = default;

      std::vector<AbstractParamDescriptionConstPtr> abstract_parameters;
      bool state;

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &config) const =0;
      virtual void updateParams(boost::any &cfg, UpdateRatesConfig &top) const= 0;
      virtual void setInitialState(boost::any &cfg) const = 0;


      void convertParams()
      {
        for(std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = abstract_parameters.begin(); i != abstract_parameters.end(); ++i)
        {
          parameters.push_back(dynamic_reconfigure::ParamDescription(**i));
        }
      }
    };

    typedef boost::shared_ptr<AbstractGroupDescription> AbstractGroupDescriptionPtr;
    typedef boost::shared_ptr<const AbstractGroupDescription> AbstractGroupDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template<class T, class PT>
    class GroupDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractGroupDescription
    {
    public:
      GroupDescription(std::string a_name, std::string a_type, int a_parent, int a_id, bool a_s, T PT::* a_f) : AbstractGroupDescription(a_name, a_type, a_parent, a_id, a_s), field(a_f)
      {
      }

      GroupDescription(const GroupDescription<T, PT>& g): AbstractGroupDescription(g.name, g.type, g.parent, g.id, g.state), field(g.field), groups(g.groups)
      {
        parameters = g.parameters;
        abstract_parameters = g.abstract_parameters;
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &cfg) const override
      {
        PT* config = boost::any_cast<PT*>(cfg);
        if(!dynamic_reconfigure::ConfigTools::getGroupState(msg, name, (*config).*field))
          return false;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          if(!(*i)->fromMessage(msg, n))
            return false;
        }

        return true;
      }

      virtual void setInitialState(boost::any &cfg) const override
      {
        PT* config = boost::any_cast<PT*>(cfg);
        T* group = &((*config).*field);
        group->state = state;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = boost::any(&((*config).*field));
          (*i)->setInitialState(n);
        }

      }

      virtual void updateParams(boost::any &cfg, UpdateRatesConfig &top) const override
      {
        PT* config = boost::any_cast<PT*>(cfg);

        T* f = &((*config).*field);
        f->setParams(top, abstract_parameters);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          (*i)->updateParams(n, top);
        }
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &cfg) const override
      {
        const PT config = boost::any_cast<PT>(cfg);
        dynamic_reconfigure::ConfigTools::appendGroup<T>(msg, name, id, parent, config.*field);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          (*i)->toMessage(msg, config.*field);
        }
      }

      T PT::* field;
      std::vector<UpdateRatesConfig::AbstractGroupDescriptionConstPtr> groups;
    };

class DEFAULT
{
  public:
    DEFAULT()
    {
      state = true;
      name = "Default";
    }

    void setParams(UpdateRatesConfig &config, const std::vector<AbstractParamDescriptionConstPtr> params)
    {
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator _i = params.begin(); _i != params.end(); ++_i)
      {
        boost::any val;
        (*_i)->getValue(config, val);


      }
    }

    

    bool state;
    std::string name;

    class UPDATE_RATE_HZ
{
  public:
    UPDATE_RATE_HZ()
    {
      state = true;
      name = "Update_Rate_Hz";
    }

    void setParams(UpdateRatesConfig &config, const std::vector<AbstractParamDescriptionConstPtr> params)
    {
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator _i = params.begin(); _i != params.end(); ++_i)
      {
        boost::any val;
        (*_i)->getValue(config, val);

        if("MSP2_INAV_DEBUG"==(*_i)->name){MSP2_INAV_DEBUG = boost::any_cast<double>(val);}
        if("MSP_RAW_IMU"==(*_i)->name){MSP_RAW_IMU = boost::any_cast<double>(val);}
        if("MSP_RAW_GPS"==(*_i)->name){MSP_RAW_GPS = boost::any_cast<double>(val);}
        if("MSP_ATTITUDE"==(*_i)->name){MSP_ATTITUDE = boost::any_cast<double>(val);}
        if("MSP_ALTITUDE"==(*_i)->name){MSP_ALTITUDE = boost::any_cast<double>(val);}
        if("MSP_RC"==(*_i)->name){MSP_RC = boost::any_cast<double>(val);}
        if("MSP_SERVO"==(*_i)->name){MSP_SERVO = boost::any_cast<double>(val);}
        if("MSP_MOTOR"==(*_i)->name){MSP_MOTOR = boost::any_cast<double>(val);}
        if("MSP_MISC"==(*_i)->name){MSP_MISC = boost::any_cast<double>(val);}
        if("MSP_ANALOG"==(*_i)->name){MSP_ANALOG = boost::any_cast<double>(val);}
        if("MSP_STATUS"==(*_i)->name){MSP_STATUS = boost::any_cast<double>(val);}
        if("MSP_SONAR_ALTITUDE"==(*_i)->name){MSP_SONAR_ALTITUDE = boost::any_cast<double>(val);}
      }
    }

    double MSP2_INAV_DEBUG;
double MSP_RAW_IMU;
double MSP_RAW_GPS;
double MSP_ATTITUDE;
double MSP_ALTITUDE;
double MSP_RC;
double MSP_SERVO;
double MSP_MOTOR;
double MSP_MISC;
double MSP_ANALOG;
double MSP_STATUS;
double MSP_SONAR_ALTITUDE;

    bool state;
    std::string name;

    
}update_rate_hz;

}groups;



//#line 14 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      double MSP2_INAV_DEBUG;
//#line 15 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      double MSP_RAW_IMU;
//#line 16 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      double MSP_RAW_GPS;
//#line 17 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      double MSP_ATTITUDE;
//#line 18 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      double MSP_ALTITUDE;
//#line 19 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      double MSP_RC;
//#line 20 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      double MSP_SERVO;
//#line 21 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      double MSP_MOTOR;
//#line 22 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      double MSP_MISC;
//#line 23 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      double MSP_ANALOG;
//#line 24 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      double MSP_STATUS;
//#line 25 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      double MSP_SONAR_ALTITUDE;
//#line 231 "/opt/ros/noetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

    bool __fromMessage__(dynamic_reconfigure::Config &msg)
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();

      int count = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        if ((*i)->fromMessage(msg, *this))
          count++;

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i ++)
      {
        if ((*i)->id == 0)
        {
          boost::any n = boost::any(this);
          (*i)->updateParams(n, *this);
          (*i)->fromMessage(msg, n);
        }
      }

      if (count != dynamic_reconfigure::ConfigTools::size(msg))
      {
        ROS_ERROR("UpdateRatesConfig::__fromMessage__ called with an unexpected parameter.");
        ROS_ERROR("Booleans:");
        for (unsigned int i = 0; i < msg.bools.size(); i++)
          ROS_ERROR("  %s", msg.bools[i].name.c_str());
        ROS_ERROR("Integers:");
        for (unsigned int i = 0; i < msg.ints.size(); i++)
          ROS_ERROR("  %s", msg.ints[i].name.c_str());
        ROS_ERROR("Doubles:");
        for (unsigned int i = 0; i < msg.doubles.size(); i++)
          ROS_ERROR("  %s", msg.doubles[i].name.c_str());
        ROS_ERROR("Strings:");
        for (unsigned int i = 0; i < msg.strs.size(); i++)
          ROS_ERROR("  %s", msg.strs[i].name.c_str());
        // @todo Check that there are no duplicates. Make this error more
        // explicit.
        return false;
      }
      return true;
    }

    // This version of __toMessage__ is used during initialization of
    // statics when __getParamDescriptions__ can't be called yet.
    void __toMessage__(dynamic_reconfigure::Config &msg, const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__, const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__) const
    {
      dynamic_reconfigure::ConfigTools::clear(msg);
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toMessage(msg, *this);

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        if((*i)->id == 0)
        {
          (*i)->toMessage(msg, *this);
        }
      }
    }

    void __toMessage__(dynamic_reconfigure::Config &msg) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      __toMessage__(msg, __param_descriptions__, __group_descriptions__);
    }

    void __toServer__(const ros::NodeHandle &nh) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toServer(nh, *this);
    }

    void __fromServer__(const ros::NodeHandle &nh)
    {
      static bool setup=false;

      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->fromServer(nh, *this);

      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i++){
        if (!setup && (*i)->id == 0) {
          setup = true;
          boost::any n = boost::any(this);
          (*i)->setInitialState(n);
        }
      }
    }

    void __clamp__()
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const UpdateRatesConfig &__max__ = __getMax__();
      const UpdateRatesConfig &__min__ = __getMin__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->clamp(*this, __max__, __min__);
    }

    uint32_t __level__(const UpdateRatesConfig &config) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      uint32_t level = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->calcLevel(level, config, *this);
      return level;
    }

    static const dynamic_reconfigure::ConfigDescription &__getDescriptionMessage__();
    static const UpdateRatesConfig &__getDefault__();
    static const UpdateRatesConfig &__getMax__();
    static const UpdateRatesConfig &__getMin__();
    static const std::vector<AbstractParamDescriptionConstPtr> &__getParamDescriptions__();
    static const std::vector<AbstractGroupDescriptionConstPtr> &__getGroupDescriptions__();

  private:
    static const UpdateRatesConfigStatics *__get_statics__();
  };

  template <> // Max and min are ignored for strings.
  inline void UpdateRatesConfig::ParamDescription<std::string>::clamp(UpdateRatesConfig &config, const UpdateRatesConfig &max, const UpdateRatesConfig &min) const
  {
    (void) config;
    (void) min;
    (void) max;
    return;
  }

  class UpdateRatesConfigStatics
  {
    friend class UpdateRatesConfig;

    UpdateRatesConfigStatics()
    {
UpdateRatesConfig::GroupDescription<UpdateRatesConfig::DEFAULT, UpdateRatesConfig> Default("Default", "", 0, 0, true, &UpdateRatesConfig::groups);
UpdateRatesConfig::GroupDescription<UpdateRatesConfig::DEFAULT::UPDATE_RATE_HZ, UpdateRatesConfig::DEFAULT> Update_Rate_Hz("Update_Rate_Hz", "", 0, 1, true, &UpdateRatesConfig::DEFAULT::update_rate_hz);
//#line 14 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __min__.MSP2_INAV_DEBUG = 0.0;
//#line 14 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __max__.MSP2_INAV_DEBUG = 1000.0;
//#line 14 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __default__.MSP2_INAV_DEBUG = 30.0;
//#line 14 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      Update_Rate_Hz.abstract_parameters.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP2_INAV_DEBUG", "double", 0, "update rate of MSP2_INAV_DEBUG", "", &UpdateRatesConfig::MSP2_INAV_DEBUG)));
//#line 14 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __param_descriptions__.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP2_INAV_DEBUG", "double", 0, "update rate of MSP2_INAV_DEBUG", "", &UpdateRatesConfig::MSP2_INAV_DEBUG)));
//#line 15 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __min__.MSP_RAW_IMU = 0.0;
//#line 15 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __max__.MSP_RAW_IMU = 1000.0;
//#line 15 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __default__.MSP_RAW_IMU = 0.0;
//#line 15 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      Update_Rate_Hz.abstract_parameters.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_RAW_IMU", "double", 0, "update rate of MSP_RAW_IMU", "", &UpdateRatesConfig::MSP_RAW_IMU)));
//#line 15 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __param_descriptions__.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_RAW_IMU", "double", 0, "update rate of MSP_RAW_IMU", "", &UpdateRatesConfig::MSP_RAW_IMU)));
//#line 16 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __min__.MSP_RAW_GPS = 0.0;
//#line 16 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __max__.MSP_RAW_GPS = 1000.0;
//#line 16 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __default__.MSP_RAW_GPS = 20.0;
//#line 16 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      Update_Rate_Hz.abstract_parameters.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_RAW_GPS", "double", 0, "update rate of MSP_RAW_GPS", "", &UpdateRatesConfig::MSP_RAW_GPS)));
//#line 16 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __param_descriptions__.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_RAW_GPS", "double", 0, "update rate of MSP_RAW_GPS", "", &UpdateRatesConfig::MSP_RAW_GPS)));
//#line 17 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __min__.MSP_ATTITUDE = 0.0;
//#line 17 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __max__.MSP_ATTITUDE = 1000.0;
//#line 17 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __default__.MSP_ATTITUDE = 30.0;
//#line 17 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      Update_Rate_Hz.abstract_parameters.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_ATTITUDE", "double", 0, "update rate of MSP_ATTITUDE", "", &UpdateRatesConfig::MSP_ATTITUDE)));
//#line 17 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __param_descriptions__.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_ATTITUDE", "double", 0, "update rate of MSP_ATTITUDE", "", &UpdateRatesConfig::MSP_ATTITUDE)));
//#line 18 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __min__.MSP_ALTITUDE = 0.0;
//#line 18 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __max__.MSP_ALTITUDE = 1000.0;
//#line 18 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __default__.MSP_ALTITUDE = 0.0;
//#line 18 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      Update_Rate_Hz.abstract_parameters.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_ALTITUDE", "double", 0, "update rate of MSP_ALTITUDE", "", &UpdateRatesConfig::MSP_ALTITUDE)));
//#line 18 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __param_descriptions__.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_ALTITUDE", "double", 0, "update rate of MSP_ALTITUDE", "", &UpdateRatesConfig::MSP_ALTITUDE)));
//#line 19 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __min__.MSP_RC = 0.0;
//#line 19 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __max__.MSP_RC = 100.0;
//#line 19 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __default__.MSP_RC = 0.0;
//#line 19 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      Update_Rate_Hz.abstract_parameters.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_RC", "double", 0, "update rate of MSP_RC", "", &UpdateRatesConfig::MSP_RC)));
//#line 19 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __param_descriptions__.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_RC", "double", 0, "update rate of MSP_RC", "", &UpdateRatesConfig::MSP_RC)));
//#line 20 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __min__.MSP_SERVO = 0.0;
//#line 20 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __max__.MSP_SERVO = 100.0;
//#line 20 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __default__.MSP_SERVO = 0.0;
//#line 20 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      Update_Rate_Hz.abstract_parameters.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_SERVO", "double", 0, "update rate of MSP_SERVO", "", &UpdateRatesConfig::MSP_SERVO)));
//#line 20 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __param_descriptions__.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_SERVO", "double", 0, "update rate of MSP_SERVO", "", &UpdateRatesConfig::MSP_SERVO)));
//#line 21 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __min__.MSP_MOTOR = 0.0;
//#line 21 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __max__.MSP_MOTOR = 1000.0;
//#line 21 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __default__.MSP_MOTOR = 0.0;
//#line 21 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      Update_Rate_Hz.abstract_parameters.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_MOTOR", "double", 0, "update rate of MSP_MOTOR", "", &UpdateRatesConfig::MSP_MOTOR)));
//#line 21 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __param_descriptions__.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_MOTOR", "double", 0, "update rate of MSP_MOTOR", "", &UpdateRatesConfig::MSP_MOTOR)));
//#line 22 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __min__.MSP_MISC = 0.0;
//#line 22 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __max__.MSP_MISC = 100.0;
//#line 22 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __default__.MSP_MISC = 0.0;
//#line 22 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      Update_Rate_Hz.abstract_parameters.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_MISC", "double", 0, "update rate of MSP_MISC", "", &UpdateRatesConfig::MSP_MISC)));
//#line 22 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __param_descriptions__.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_MISC", "double", 0, "update rate of MSP_MISC", "", &UpdateRatesConfig::MSP_MISC)));
//#line 23 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __min__.MSP_ANALOG = 0.0;
//#line 23 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __max__.MSP_ANALOG = 100.0;
//#line 23 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __default__.MSP_ANALOG = 0.0;
//#line 23 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      Update_Rate_Hz.abstract_parameters.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_ANALOG", "double", 0, "update rate of MSP_ANALOG", "", &UpdateRatesConfig::MSP_ANALOG)));
//#line 23 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __param_descriptions__.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_ANALOG", "double", 0, "update rate of MSP_ANALOG", "", &UpdateRatesConfig::MSP_ANALOG)));
//#line 24 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __min__.MSP_STATUS = 0.0;
//#line 24 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __max__.MSP_STATUS = 1000.0;
//#line 24 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __default__.MSP_STATUS = 0.0;
//#line 24 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      Update_Rate_Hz.abstract_parameters.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_STATUS", "double", 0, "update rate of MSP_STATUS", "", &UpdateRatesConfig::MSP_STATUS)));
//#line 24 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __param_descriptions__.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_STATUS", "double", 0, "update rate of MSP_STATUS", "", &UpdateRatesConfig::MSP_STATUS)));
//#line 25 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __min__.MSP_SONAR_ALTITUDE = 0.0;
//#line 25 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __max__.MSP_SONAR_ALTITUDE = 1000.0;
//#line 25 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __default__.MSP_SONAR_ALTITUDE = 0.0;
//#line 25 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      Update_Rate_Hz.abstract_parameters.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_SONAR_ALTITUDE", "double", 0, "update rate of MSP_SONAR_ALTITUDE", "", &UpdateRatesConfig::MSP_SONAR_ALTITUDE)));
//#line 25 "/home/thanhdat/drone/src/ros-multiwii/cfg/UpdateRates.cfg"
      __param_descriptions__.push_back(UpdateRatesConfig::AbstractParamDescriptionConstPtr(new UpdateRatesConfig::ParamDescription<double>("MSP_SONAR_ALTITUDE", "double", 0, "update rate of MSP_SONAR_ALTITUDE", "", &UpdateRatesConfig::MSP_SONAR_ALTITUDE)));
//#line 124 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Update_Rate_Hz.convertParams();
//#line 124 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.groups.push_back(UpdateRatesConfig::AbstractGroupDescriptionConstPtr(new UpdateRatesConfig::GroupDescription<UpdateRatesConfig::DEFAULT::UPDATE_RATE_HZ, UpdateRatesConfig::DEFAULT>(Update_Rate_Hz)));
//#line 124 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __group_descriptions__.push_back(UpdateRatesConfig::AbstractGroupDescriptionConstPtr(new UpdateRatesConfig::GroupDescription<UpdateRatesConfig::DEFAULT::UPDATE_RATE_HZ, UpdateRatesConfig::DEFAULT>(Update_Rate_Hz)));
//#line 246 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.convertParams();
//#line 246 "/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __group_descriptions__.push_back(UpdateRatesConfig::AbstractGroupDescriptionConstPtr(new UpdateRatesConfig::GroupDescription<UpdateRatesConfig::DEFAULT, UpdateRatesConfig>(Default)));
//#line 369 "/opt/ros/noetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

      for (std::vector<UpdateRatesConfig::AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        __description_message__.groups.push_back(**i);
      }
      __max__.__toMessage__(__description_message__.max, __param_descriptions__, __group_descriptions__);
      __min__.__toMessage__(__description_message__.min, __param_descriptions__, __group_descriptions__);
      __default__.__toMessage__(__description_message__.dflt, __param_descriptions__, __group_descriptions__);
    }
    std::vector<UpdateRatesConfig::AbstractParamDescriptionConstPtr> __param_descriptions__;
    std::vector<UpdateRatesConfig::AbstractGroupDescriptionConstPtr> __group_descriptions__;
    UpdateRatesConfig __max__;
    UpdateRatesConfig __min__;
    UpdateRatesConfig __default__;
    dynamic_reconfigure::ConfigDescription __description_message__;

    static const UpdateRatesConfigStatics *get_instance()
    {
      // Split this off in a separate function because I know that
      // instance will get initialized the first time get_instance is
      // called, and I am guaranteeing that get_instance gets called at
      // most once.
      static UpdateRatesConfigStatics instance;
      return &instance;
    }
  };

  inline const dynamic_reconfigure::ConfigDescription &UpdateRatesConfig::__getDescriptionMessage__()
  {
    return __get_statics__()->__description_message__;
  }

  inline const UpdateRatesConfig &UpdateRatesConfig::__getDefault__()
  {
    return __get_statics__()->__default__;
  }

  inline const UpdateRatesConfig &UpdateRatesConfig::__getMax__()
  {
    return __get_statics__()->__max__;
  }

  inline const UpdateRatesConfig &UpdateRatesConfig::__getMin__()
  {
    return __get_statics__()->__min__;
  }

  inline const std::vector<UpdateRatesConfig::AbstractParamDescriptionConstPtr> &UpdateRatesConfig::__getParamDescriptions__()
  {
    return __get_statics__()->__param_descriptions__;
  }

  inline const std::vector<UpdateRatesConfig::AbstractGroupDescriptionConstPtr> &UpdateRatesConfig::__getGroupDescriptions__()
  {
    return __get_statics__()->__group_descriptions__;
  }

  inline const UpdateRatesConfigStatics *UpdateRatesConfig::__get_statics__()
  {
    const static UpdateRatesConfigStatics *statics;

    if (statics) // Common case
      return statics;

    boost::mutex::scoped_lock lock(dynamic_reconfigure::__init_mutex__);

    if (statics) // In case we lost a race.
      return statics;

    statics = UpdateRatesConfigStatics::get_instance();

    return statics;
  }


}

#undef DYNAMIC_RECONFIGURE_FINAL

#endif // __UPDATERATESRECONFIGURATOR_H__
