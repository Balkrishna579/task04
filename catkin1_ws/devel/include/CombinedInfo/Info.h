// Generated by gencpp from file CombinedInfo/Info.msg
// DO NOT EDIT!


#ifndef COMBINEDINFO_MESSAGE_INFO_H
#define COMBINEDINFO_MESSAGE_INFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <CombinedInfo/Vector3.h>
#include <CombinedInfo/Vector3.h>
#include <CombinedInfo/Vector3.h>

namespace CombinedInfo
{
template <class ContainerAllocator>
struct Info_
{
  typedef Info_<ContainerAllocator> Type;

  Info_()
    : linear()
    , angular()
    , rota()  {
    }
  Info_(const ContainerAllocator& _alloc)
    : linear(_alloc)
    , angular(_alloc)
    , rota(_alloc)  {
  (void)_alloc;
    }



   typedef  ::CombinedInfo::Vector3_<ContainerAllocator>  _linear_type;
  _linear_type linear;

   typedef  ::CombinedInfo::Vector3_<ContainerAllocator>  _angular_type;
  _angular_type angular;

   typedef  ::CombinedInfo::Vector3_<ContainerAllocator>  _rota_type;
  _rota_type rota;





  typedef boost::shared_ptr< ::CombinedInfo::Info_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::CombinedInfo::Info_<ContainerAllocator> const> ConstPtr;

}; // struct Info_

typedef ::CombinedInfo::Info_<std::allocator<void> > Info;

typedef boost::shared_ptr< ::CombinedInfo::Info > InfoPtr;
typedef boost::shared_ptr< ::CombinedInfo::Info const> InfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::CombinedInfo::Info_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::CombinedInfo::Info_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::CombinedInfo::Info_<ContainerAllocator1> & lhs, const ::CombinedInfo::Info_<ContainerAllocator2> & rhs)
{
  return lhs.linear == rhs.linear &&
    lhs.angular == rhs.angular &&
    lhs.rota == rhs.rota;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::CombinedInfo::Info_<ContainerAllocator1> & lhs, const ::CombinedInfo::Info_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace CombinedInfo

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::CombinedInfo::Info_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::CombinedInfo::Info_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::CombinedInfo::Info_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::CombinedInfo::Info_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::CombinedInfo::Info_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::CombinedInfo::Info_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::CombinedInfo::Info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9424e4f2ea440d61cdcc97ed9f70470f";
  }

  static const char* value(const ::CombinedInfo::Info_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9424e4f2ea440d61ULL;
  static const uint64_t static_value2 = 0xcdcc97ed9f70470fULL;
};

template<class ContainerAllocator>
struct DataType< ::CombinedInfo::Info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "CombinedInfo/Info";
  }

  static const char* value(const ::CombinedInfo::Info_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::CombinedInfo::Info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Vector3  linear\n"
"Vector3  angular\n"
"Vector3  rota\n"
"\n"
"================================================================================\n"
"MSG: CombinedInfo/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::CombinedInfo::Info_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::CombinedInfo::Info_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.linear);
      stream.next(m.angular);
      stream.next(m.rota);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Info_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::CombinedInfo::Info_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::CombinedInfo::Info_<ContainerAllocator>& v)
  {
    s << indent << "linear: ";
    s << std::endl;
    Printer< ::CombinedInfo::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.linear);
    s << indent << "angular: ";
    s << std::endl;
    Printer< ::CombinedInfo::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.angular);
    s << indent << "rota: ";
    s << std::endl;
    Printer< ::CombinedInfo::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.rota);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COMBINEDINFO_MESSAGE_INFO_H