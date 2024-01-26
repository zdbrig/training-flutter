
import React, { useState } from 'react';
import { View, Button } from 'react-native';
import ChildComponent from './ChildComponent';

const ParentComponent = () => {
  const [message, setMessage] = useState('Initial message');

  const handlePress = () => {
    setMessage('Updated message from parent');
  };

  return (
    <View>
      <Button title="Update Message" onPress={handlePress} />
      <ChildComponent message={message} />
    </View>
  );
};

export default ParentComponent;
