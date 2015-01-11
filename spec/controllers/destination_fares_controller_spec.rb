require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe DestinationFaresController do

  # This should return the minimal set of attributes required to create a valid
  # DestinationFare. As you add validations to DestinationFare, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "vehicletype_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DestinationFaresController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all destination_fares as @destination_fares" do
      destination_fare = DestinationFare.create! valid_attributes
      get :index, {}, valid_session
      assigns(:destination_fares).should eq([destination_fare])
    end
  end

  describe "GET show" do
    it "assigns the requested destination_fare as @destination_fare" do
      destination_fare = DestinationFare.create! valid_attributes
      get :show, {:id => destination_fare.to_param}, valid_session
      assigns(:destination_fare).should eq(destination_fare)
    end
  end

  describe "GET new" do
    it "assigns a new destination_fare as @destination_fare" do
      get :new, {}, valid_session
      assigns(:destination_fare).should be_a_new(DestinationFare)
    end
  end

  describe "GET edit" do
    it "assigns the requested destination_fare as @destination_fare" do
      destination_fare = DestinationFare.create! valid_attributes
      get :edit, {:id => destination_fare.to_param}, valid_session
      assigns(:destination_fare).should eq(destination_fare)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new DestinationFare" do
        expect {
          post :create, {:destination_fare => valid_attributes}, valid_session
        }.to change(DestinationFare, :count).by(1)
      end

      it "assigns a newly created destination_fare as @destination_fare" do
        post :create, {:destination_fare => valid_attributes}, valid_session
        assigns(:destination_fare).should be_a(DestinationFare)
        assigns(:destination_fare).should be_persisted
      end

      it "redirects to the created destination_fare" do
        post :create, {:destination_fare => valid_attributes}, valid_session
        response.should redirect_to(DestinationFare.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved destination_fare as @destination_fare" do
        # Trigger the behavior that occurs when invalid params are submitted
        DestinationFare.any_instance.stub(:save).and_return(false)
        post :create, {:destination_fare => { "vehicletype_id" => "invalid value" }}, valid_session
        assigns(:destination_fare).should be_a_new(DestinationFare)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        DestinationFare.any_instance.stub(:save).and_return(false)
        post :create, {:destination_fare => { "vehicletype_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested destination_fare" do
        destination_fare = DestinationFare.create! valid_attributes
        # Assuming there are no other destination_fares in the database, this
        # specifies that the DestinationFare created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        DestinationFare.any_instance.should_receive(:update).with({ "vehicletype_id" => "1" })
        put :update, {:id => destination_fare.to_param, :destination_fare => { "vehicletype_id" => "1" }}, valid_session
      end

      it "assigns the requested destination_fare as @destination_fare" do
        destination_fare = DestinationFare.create! valid_attributes
        put :update, {:id => destination_fare.to_param, :destination_fare => valid_attributes}, valid_session
        assigns(:destination_fare).should eq(destination_fare)
      end

      it "redirects to the destination_fare" do
        destination_fare = DestinationFare.create! valid_attributes
        put :update, {:id => destination_fare.to_param, :destination_fare => valid_attributes}, valid_session
        response.should redirect_to(destination_fare)
      end
    end

    describe "with invalid params" do
      it "assigns the destination_fare as @destination_fare" do
        destination_fare = DestinationFare.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DestinationFare.any_instance.stub(:save).and_return(false)
        put :update, {:id => destination_fare.to_param, :destination_fare => { "vehicletype_id" => "invalid value" }}, valid_session
        assigns(:destination_fare).should eq(destination_fare)
      end

      it "re-renders the 'edit' template" do
        destination_fare = DestinationFare.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DestinationFare.any_instance.stub(:save).and_return(false)
        put :update, {:id => destination_fare.to_param, :destination_fare => { "vehicletype_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested destination_fare" do
      destination_fare = DestinationFare.create! valid_attributes
      expect {
        delete :destroy, {:id => destination_fare.to_param}, valid_session
      }.to change(DestinationFare, :count).by(-1)
    end

    it "redirects to the destination_fares list" do
      destination_fare = DestinationFare.create! valid_attributes
      delete :destroy, {:id => destination_fare.to_param}, valid_session
      response.should redirect_to(destination_fares_url)
    end
  end

end
