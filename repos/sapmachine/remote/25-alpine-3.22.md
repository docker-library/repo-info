## `sapmachine:25-alpine-3.22`

```console
$ docker pull sapmachine@sha256:d9b69a8d7b650e3ab35db0968ad5959df3a238da6f13244bae56f0f05f1245e2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:25-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:853f71b8475bc254489ab7a772ddf397e3389d9cf78971480b35c3536f7e3a05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228687435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:185d8151851567333f5a14654d68429827eeaa7170b32ee84f1a7971aeeb83a7`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:57:07 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jdk=25.0.4.1-r0 # buildkit
# Thu, 17 Sep 2026 21:57:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jdk
# Thu, 17 Sep 2026 21:57:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:308923144aeb0b24e52cd383fabbb527db80aa60f73927ae968a592715b4ff17`  
		Last Modified: Thu, 17 Sep 2026 21:57:27 GMT  
		Size: 224.9 MB (224895360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:175bc3d6983985e310fa6c10f8774f9505d589689213d3612321994f3e0cf90e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **510.2 KB (510221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c387d7f64e91b0a31745b45e5c074f5928e8087a0db4b621cada78e93249e960`

```dockerfile
```

-	Layers:
	-	`sha256:f15b725197b8a37989785e9dcf5700c7c1a57351680103692883a52d9d7ad644`  
		Last Modified: Thu, 17 Sep 2026 21:57:23 GMT  
		Size: 501.9 KB (501937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:554c28153cf135e8faae970923bdecefde257029681bcb12b12b8cda538b5fdd`  
		Last Modified: Thu, 17 Sep 2026 21:57:23 GMT  
		Size: 8.3 KB (8284 bytes)  
		MIME: application/vnd.in-toto+json
