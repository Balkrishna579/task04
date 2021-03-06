// Generated by gencpp from file srvclint/firstResponse.msg
// DO NOT EDIT!


#ifndef SRVCLINT_MESSAGE_FIRSTRESPONSE_H
#define SRVCLINT_MESSAGE_FIRSTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace srvclint
{
template <class ContainerAllocator>
struct firstResponse_
{
  typedef firstResponse_<ContainerAllocator> Type;

  firstResponse_()
    : num1()  {
    }
  firstResponse_(const ContainerAllocator& _alloc)
    : num1(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<int64_t, typename ContainerAllocator::template rebind<int64_t>::other >  _num1_type;
  _num1_type num1;





  typedef boost::shared_ptr< ::srvclint::firstResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::srvclint::firstResponse_<ContainerAllocator> const> ConstPtr;

}; // struct firstResponse_

typedef ::srvclint::firstResponse_<std::allocator<void> > firstResponse;

typedef boost::shared_ptr< ::srvclint::firstResponse > firstResponsePtr;
typedef boost::shared_ptr< ::srvclint::firstResponse const> firstResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::srvclint::firstResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::srvclint::firstResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::srvclint::firstResponse_<ContainerAllocator1> & lhs, const ::srvclint::firstResponse_<ContainerAllocator2> & rhs)
{
  return lhs.num1 == rhs.num1;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::srvclint::firstResponse_<ContainerAllocator1> & lhs, const ::srvclint::firstResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace srvclint

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::srvclint::firstResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::srvclint::firstResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::srvclint::firstResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::srvclint::firstResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::srvclint::firstResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::srvclint::firstResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::srvclint::firstResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9073d392ac229b641b8de1695bb6f85d";
  }

  static const char* value(const ::srvclint::firstResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9073d392ac229b64ULL;
  static const uint64_t static_value2 = 0x1b8de1695bb6f85dULL;
};

template<class ContainerAllocator>
struct DataType< ::srvclint::firstResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "srvclint/firstResponse";
  }

  static const char* value(const ::srvclint::firstResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::srvclint::firstResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64[] num1\n"
"\n"
;
  }

  static const char* value(const ::srvclint::firstResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::srvclint::firstResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.num1);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct firstResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::srvclint::firstResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::srvclint::firstResponse_<ContainerAllocator>& v)
  {
    s << indent << "num1[]" << std::endl;
    for (size_t i = 0; i < v.num1.size(); ++i)
    {
      s << indent << "  num1[" << i << "]: ";
      Printer<int64_t>::stream(s, indent + "  ", v.num1[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SRVCLINT_MESSAGE_FIRSTRESPONSE_H
