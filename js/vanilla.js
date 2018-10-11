let arr = [3,4,5]; 
mapStateToProps () {
 
}
const mapStateToProps = state => {
  const {state_ting} = state.;
  return {};
};
export default const ANNOTATE = "ANNOTATE"
const mapStateToProps = state => {
  const {adfj} = state.adfj;
  return {adfj};
};
const mapDispatchToProps = function(dispatch) {
  return {
    deleteAnnotation: type => {
      dispatch(actionCreators.ActionCreators.deleteAnnotation(type));
    },
    annotationSizeChanged: (index, event) => {
      dispatch(
        actionCreators.ActionCreators.annotationSizeChanged(
          index,
          event.target.value,
        ),
      );
    },
  };
};


