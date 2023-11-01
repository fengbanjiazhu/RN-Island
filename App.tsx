import React from 'react';
import {View, StyleSheet, Button, NativeModules} from 'react-native';

const {Pet} = NativeModules;

const App = () => {
  const onPress = () => {
    Pet.startActivity();
  };
  return (
    <View style={styles.root}>
      <Button onPress={onPress} title="Start Activity" />
      <Button title="Update Activity" />
      <Button title="Stop Activity" />
    </View>
  );
};

export default App;

const styles = StyleSheet.create({
  root: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});
