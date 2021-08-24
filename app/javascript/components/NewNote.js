import React from "react";

const NewNote = () => {
  return (
    <div>
      <p>Create a New Post It Note</p>
      <form action="/notes" method="post">
        <p>Title</p>
        <input name='note[title]'/>
        <p>Description</p>
        <input name='note[description]'/>
        <button type="submit">Add</button>
      </form>
    </div>
  );
};

export default NewNote;