import React, { memo } from 'react';

import { Block, Container } from './components';

const HomePage = ({ global: { plugins }, history: { push } }) => {
  return (
    <>
      <Container className="container-fluid">
        <div className="row">
          <div className="col-12">
            <h1>Welcome to your dashboard!</h1>
            <Block>
              <p><b>Data Types</b></p>
              <p>Take a look at your left sidebar to browse the different data types. Click on one of the data types to create and view the current data.</p>
            </Block>
          </div>
        </div>
      </Container>
    </>
  );
};

export default memo(HomePage);
