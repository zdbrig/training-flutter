
import React, { useState, useEffect } from 'react';
import { View, Text, TextInput, Button, StyleSheet } from 'react-native';

const LoadAndPostExample = () => {
  const [fetchedData, setFetchedData] = useState('');
  const [inputText, setInputText] = useState('');

  useEffect(() => {
    fetch('https://example.com/data')
      .then(response => response.json())
      .then(data => setFetchedData(data.message))
      .catch(error => console.error('Error:', error));
  }, []);

  const handleSubmit = () => {
    fetch('https://example.com/post', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ inputText }),
    })
      .then(response => response.json())
      .then(data => console.log('Success:', data))
      .catch(error => console.error('Error:', error));
  };

  return (
    <View style={styles.container}>
      <Text style={styles.header}>React Native Load and Post</Text>
      <Text>Fetched Data: {fetchedData}</Text>
      <TextInput
        style={styles.input}
        onChangeText={text => setInputText(text)}
        value={inputText}
        placeholder="Enter text"
      />
      <Button title="Submit" onPress={handleSubmit} />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 20,
  },
  header: {
    fontSize: 20,
    marginBottom: 10,
  },
  input: {
    height: 40,
    borderColor: 'gray',
    borderWidth: 1,
    width: '100%',
    marginBottom: 10,
    padding: 10,
  },
});

export default LoadAndPostExample;
