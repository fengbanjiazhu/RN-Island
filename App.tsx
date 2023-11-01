import React from 'react';
import {View, StyleSheet, Button, NativeModules} from 'react-native';

const {Pet} = NativeModules;

const App = () => {
  const onStart = () => {
    Pet.startActivity();
  };

  function onEnd() {
    Pet.endActivity();
  }

  function onUpdate() {
    Pet.updateActivity('Updated activity');
  }

  return (
    <View style={styles.root}>
      <Button onPress={onStart} title="Start Activity" />
      <Button onPress={onUpdate} title="Update Activity" />
      <Button onPress={onEnd} title="Stop Activity" />
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
