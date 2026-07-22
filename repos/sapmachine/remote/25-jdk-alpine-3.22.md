## `sapmachine:25-jdk-alpine-3.22`

```console
$ docker pull sapmachine@sha256:3b8acc408f0ff6d18533c0b5e3f08f43fb43c14c6072794525975eae5d67d200
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:25-jdk-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:21f76977373c0b5f386a158d7d9f21e30a597eb438c55b12f67de27799501ddc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228690918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4c19c7ed6b9f711fced5257e3e8f1b2909707fe52a438baae02a6fc1c026fa`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Wed, 22 Jul 2026 18:24:33 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jdk=25.0.4-r0 # buildkit
# Wed, 22 Jul 2026 18:24:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jdk
# Wed, 22 Jul 2026 18:24:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f3531ebf410e58d47a7dead841c1721e011e6b74c7aa5cdbf5c8c417fd809c6`  
		Last Modified: Wed, 22 Jul 2026 18:24:55 GMT  
		Size: 224.9 MB (224903323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f24982971e26d269e391225414258135cee95437c7e8b8ee603aac266a32055a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **510.2 KB (510191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed7eb846f3e3bc2d1ef331bc4d907f36e2e7d28675f21f17e9c3093e3debd95`

```dockerfile
```

-	Layers:
	-	`sha256:f2c924f59ff6ab628b8d18b4a1407a5452598dbc96a7c2c580ed37118e5e849b`  
		Last Modified: Wed, 22 Jul 2026 18:24:50 GMT  
		Size: 501.9 KB (501921 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:739881b4c19d674112fd21859af1f8b795f9988d70ed022a69b78ee3df612882`  
		Last Modified: Wed, 22 Jul 2026 18:24:50 GMT  
		Size: 8.3 KB (8270 bytes)  
		MIME: application/vnd.in-toto+json
