import { FaqsPageModule } from './faqs-page.module';

describe('FaqsPageModule', () => {
  let faqsPageModule: FaqsPageModule;

  beforeEach(() => {
    faqsPageModule = new FaqsPageModule();
  });

  it('should create an instance', () => {
    expect(faqsPageModule).toBeTruthy();
  });
});
