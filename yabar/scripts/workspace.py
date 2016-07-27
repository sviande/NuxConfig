import i3

def print_workspaces():
    workspaces = i3.get_workspaces()
    outputlist=[]
    for i in workspaces:
        if i['focused']==True:
            output = "<span>"+i['name']+"</span>"
        else:
            output = "<span foreground='#96b5b4'>"+i['name']+"</span>"
        outputlist.append(output)

    print(" ".join(outputlist))

print_workspaces()

def list_workspaces(event, data, subscription):
    if 'change' in event:
        print_workspaces()

subscription = i3.Subscription(list_workspaces, 'workspace')
