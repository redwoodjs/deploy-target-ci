import type { Meta } from '@storybook/react'

import ContactUsPage from './ContactUsPage'

export const generated = () => {
  return <ContactUsPage />
}

export default {
  title: 'Pages/ContactUsPage',
  component: ContactUsPage,
} as Meta<typeof ContactUsPage>
