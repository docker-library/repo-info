## `sapmachine:21-alpine-3.21`

```console
$ docker pull sapmachine@sha256:611acbddc5cdf4bcf85fc247196ef2d000490c408f549b687ddd8733d20f85cd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:44c2ba81f4b719237326898c90ad7810e630fe7166e97677b06b43750bb5a6ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.3 MB (223298764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6837728b9018ad235e73cdbbcdb6f3786200b00b1cdd628a5e8fb32ba81d58`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 16:42:35 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jdk=21.0.13.1-r0 # buildkit
# Wed, 18 Nov 2026 16:42:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jdk
# Wed, 18 Nov 2026 16:42:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:055ad34c633ef4518bd41b73677a9548911e227ea932de3fccfcc7c8db184ead`  
		Last Modified: Wed, 18 Nov 2026 16:42:57 GMT  
		Size: 219.7 MB (219673362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:88b8369bcd4f4f08732c61800834bf936a5f95f91c26167cca7d02218c83071b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.7 KB (523699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0587e0c72d19299e61608567e36b33f18e7a3d08029bc85faa3becdd95249ab9`

```dockerfile
```

-	Layers:
	-	`sha256:e2e956db6e86f489bc550d4ba23a7509945c004c3953f1b0a29c55b534a9969b`  
		Last Modified: Wed, 18 Nov 2026 16:42:53 GMT  
		Size: 516.1 KB (516068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8cb6d39de50991c0a80fd1d5555c1fa0f0e97162a65f671646dcb470640d0f5`  
		Last Modified: Wed, 18 Nov 2026 16:42:53 GMT  
		Size: 7.6 KB (7631 bytes)  
		MIME: application/vnd.in-toto+json
