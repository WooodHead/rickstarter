export const fetchAllProjects = () => {
  return $.ajax({
    method: 'GET',
    url: 'api/projects'
  });
};

export const fetchSingleProject = (projectId) => {
  return $.ajax({
    method: 'GET',
    url: `api/projects/${projectId}`
  });
};

export const createProject= (project) => {
  return $.ajax({
    method: 'POST',
    url: 'api/projects/',
    data: project,
    contentType: false,
    processData: false
  });
};

export const editProject = (project) => {
  return $.ajax({
    method: 'PATCH',
    url: `api/projects/${project.projectId}`,
    data: { project }
  });
};

export const fetchCategory = (category) => {
return $.ajax({
  method: 'get',
  url: `api/projects`,
  data: { category }
  });
};

export const fetchSearch = (query) => {
return $.ajax({
  method: 'get',
  url: `api/projects`,
  data: { query }
  });
};
