// Generated by gencpp from file srvclint/primeRequest.msg
// DO NOT EDIT!


#ifndef SRVCLINT_MESSAGE_PRIMEREQUEST_H
#define SRVCLINT_MESSAGE_PRIMEREQUEST_H


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
struct primeRequest_
{
  typedef primeRequest_<ContainerAllocator> Type;

  primeRequest_()
    : num2()  {
    }
  primeRequest_(const ContainerAllocator& _alloc)
    : num2(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<int64_t, typename ContainerAllocator::template rebind<int64_t>::other >  _num2_type;
  _num2_type num2;





  typedef boost::shared_ptr< ::srvclint::primeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::srvclint::primeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct primeRequest_

typedef ::srvclint::primeRequest_<std::allocator<void> > primeRequest;

typedef boost::shared_ptr< ::srvclint::primeRequest > primeRequestPtr;
typedef boost::shared_ptr< ::srvclint::primeRequest const> primeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::srvclint::primeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::srvclint::primeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::srvclint::primeRequest_<ContainerAllocator1> & lhs, const ::srvclint::primeRequest_<ContainerAllocator2> & rhs)
{
  return lhs.num2 == rhs.num2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::srvclint::primeRequest_<ContainerAllocator1> & lhs, const ::srvclint::primeRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace srvclint

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::srvclint::primeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::srvclint::primeRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::srvclint::primeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::srvclint::primeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::srvclint::primeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::srvclint::primeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::srvclint::primeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2f44a4f612e30235b2307bc2c0cc629b";
  }

  static const char* value(const ::srvclint::primeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2f44a4f612e30235ULL;
  static const uint64_t static_value2 = 0xb2307bc2c0cc629bULL;
};

template<class ContainerAllocator>
struct DataType< ::srvclint::primeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "srvclint/primeRequest";
  }

  static const char* value(const ::srvclint::primeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::srvclint::primeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64[] num2\n"
"\n"
;
  }

  static const char* value(const ::srvclint::primeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::srvclint::primeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.num2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct primeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::srvclint::primeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::srvclint::primeRequest_<ContainerAllocator>& v)
  {
    s << indent << "num2[]" << std::endl;
    for (size_t i = 0; i < v.num2.size(); ++i)
    {
      s << indent << "  num2[" << i << "]: ";
      Printer<int64_t>::stream(s, indent + "  ", v.num2[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SRVCLINT_MESSAGE_PRIMEREQUEST_H
