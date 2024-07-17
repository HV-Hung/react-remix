import { describe, it, expect } from 'vitest';
import { render } from '@testing-library/react';

import App from '../_index';

describe('App', () => {
  it('should render', () => {
    const { getByText } = render(<App />);
    const title = getByText('Welcome to Remix');

    expect(title).not.toBeNull();
  });
});