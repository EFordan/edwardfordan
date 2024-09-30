import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CartOtherPageComponent } from './cart-other-page.component';

describe('CartOtherPageComponent', () => {
  let component: CartOtherPageComponent;
  let fixture: ComponentFixture<CartOtherPageComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [CartOtherPageComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CartOtherPageComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
