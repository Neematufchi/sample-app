import mindlogger_build_applet as mba
q1 = mba.Radio(
    username="akeshavan",
    repo="openhumans-mindlogger-survey",
    # this is optional. Since all my github pages are from anisha.pizza, i need to include this.
    cname="anisha.pizza", 
    # this item_id value is needed for conditional logic!
    item_id='hangryNow',
    prefLabel="asking if i'm hangry now",
    altLabel="hangry",
    description="asking if the user is hangry, yes or no",
    question="are you hangry right now?",
    responseOptions={
        'minValue': 0,
        'maxValue': 1,
        'required': True,
        'type': 'xsd:boolean',
        'choices': [
            {
                'name': 'Yes',
                'value': 1,
            },
            {
                'name': 'No',
                'value': 0,
            },
        ]
    }
)

q2 = mba.Radio(
    username="akeshavan",
    repo="openhumans-mindlogger-survey",
    cname="anisha.pizza",
    item_id='ateWhen',
    prefLabel="when you last ate",
    altLabel="ateWhen",
    description="How long ago did you last eat",
    question="How long ago did you last eat?",
    responseOptions={
        'minValue': 0,
        'maxValue': 3,
        'required': True,
        'type': 'xsd:boolean',
        'choices': [
            {
                'name': 'Just now',
                'value': 0,
            },
            {
                'name': '1-2 hours ago',
                'value': 1,
            },
            {
                'name': '2-3 hours ago',
                'value': 2,
            },
            {
                'name': '3+ hours ago',
                'value': 3,
            },
        ]
    }
)
q1.postItem()
'https://anisha.pizza/openhumans-mindlogger-survey/items/hangryNow.jsonld'
activity1 = mba.Activity(
                user="akeshavan",
                repo="openhumans-mindlogger-survey",
                # this is optional. Since all my github pages are from anisha.pizza, i need to include the cname.
                cname="anisha.pizza", 
                activity_id='hangryActivity',
                prefLabel="hangryness activity",
                altLabel="hangryActivity",
                description="an activity that asks if you're hangry"
            )
activity1.addItem(q1)

# Make the second question conditional if the first question is answered true
activity1.addItem(q2, "hangryNow")

# post the activity to github
activity1.postActivity()
'https://anisha.pizza/openhumans-mindlogger-survey/activities/hangryActivity_schema.jsonld'
activitySet = mba.ActivitySet(
                user="akeshavan",
                repo="openhumans-mindlogger-survey",
                cname="anisha.pizza",
                activitySet_id='hangryActivitySet',
                prefLabel="hangryness activity set",
                altLabel="hangryActivity",
                description="an activitySet that asks if you're hangry, and what you ate and when"
              )

