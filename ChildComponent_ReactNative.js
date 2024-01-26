
import React from 'react';
import { View, Text } from 'react-native';

const ChildComponent = ({ message }) => {
  return (
    <View>
      <Text>{message}</Text>
    </View>
  );
};

export default ChildComponent;
