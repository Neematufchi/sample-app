# sample-app
import mindlogger_build_applet as mba
username="Neematufchi",
repo="sample-app",
tem_id='hangryNow',
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
import mindlogger_build_applet as mba
username="Neematufchi",
repo="sample-app",
tem_id='ateWhen',
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
'https://neematufchi.github.io/sample-app/'
activity1 = mba.Activity(
                user="Neematufchi",
                repo="sample-app",
                activity_id='hangryActivity',
                prefLabel="hangryness activity",
                altLabel="hangryActivity",
                description="an activity that asks if you're hangry"
            )
activity1.addItem(q1)
activity1.addItem(q2, "hangryNow")

activity1.postActivity()



