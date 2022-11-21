// Generated by gencpp from file unit_5_services/BB8CustomServiceMessageRequest.msg
// DO NOT EDIT!


#ifndef UNIT_5_SERVICES_MESSAGE_BB8CUSTOMSERVICEMESSAGEREQUEST_H
#define UNIT_5_SERVICES_MESSAGE_BB8CUSTOMSERVICEMESSAGEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace unit_5_services
{
template <class ContainerAllocator>
struct BB8CustomServiceMessageRequest_
{
  typedef BB8CustomServiceMessageRequest_<ContainerAllocator> Type;

  BB8CustomServiceMessageRequest_()
    : side(0.0)
    , repetitions(0)  {
    }
  BB8CustomServiceMessageRequest_(const ContainerAllocator& _alloc)
    : side(0.0)
    , repetitions(0)  {
  (void)_alloc;
    }



   typedef double _side_type;
  _side_type side;

   typedef int32_t _repetitions_type;
  _repetitions_type repetitions;





  typedef boost::shared_ptr< ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator> const> ConstPtr;

}; // struct BB8CustomServiceMessageRequest_

typedef ::unit_5_services::BB8CustomServiceMessageRequest_<std::allocator<void> > BB8CustomServiceMessageRequest;

typedef boost::shared_ptr< ::unit_5_services::BB8CustomServiceMessageRequest > BB8CustomServiceMessageRequestPtr;
typedef boost::shared_ptr< ::unit_5_services::BB8CustomServiceMessageRequest const> BB8CustomServiceMessageRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator1> & lhs, const ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator2> & rhs)
{
  return lhs.side == rhs.side &&
    lhs.repetitions == rhs.repetitions;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator1> & lhs, const ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace unit_5_services

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2510b5db7c557bb39c17842733f10222";
  }

  static const char* value(const ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2510b5db7c557bb3ULL;
  static const uint64_t static_value2 = 0x9c17842733f10222ULL;
};

template<class ContainerAllocator>
struct DataType< ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "unit_5_services/BB8CustomServiceMessageRequest";
  }

  static const char* value(const ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 side         # The distance of each side of the square\n"
"int32 repetitions    # The number of times BB-8 has to execute the square movement when the service is called\n"
;
  }

  static const char* value(const ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.side);
      stream.next(m.repetitions);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BB8CustomServiceMessageRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::unit_5_services::BB8CustomServiceMessageRequest_<ContainerAllocator>& v)
  {
    s << indent << "side: ";
    Printer<double>::stream(s, indent + "  ", v.side);
    s << indent << "repetitions: ";
    Printer<int32_t>::stream(s, indent + "  ", v.repetitions);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UNIT_5_SERVICES_MESSAGE_BB8CUSTOMSERVICEMESSAGEREQUEST_H
