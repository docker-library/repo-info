## `sapmachine:25-alpine-3.21`

```console
$ docker pull sapmachine@sha256:f460a8154ac14c5766d708a027088b44c8a981c44ac897082bca9de801ffca0f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:25-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:01f9f8e07fc82244e29f1186d92131ea8b8636d9233dd1dd9815935403cfccd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.4 MB (228406895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c4f043d2214aa044667e4327767b668868f3a6e2bfe8957867ababb34e779b6`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 18:06:30 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jdk=25.0.4.1-r0 # buildkit
# Thu, 20 Aug 2026 18:06:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jdk
# Thu, 20 Aug 2026 18:06:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b6f5fd3c3ec59abba55345b4c647bdcf046d91893f4fbeec25ced5f37432ff`  
		Last Modified: Thu, 20 Aug 2026 18:06:51 GMT  
		Size: 224.8 MB (224760020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a66012de06eaf777b6714e06783a6c058d21096f58b973aaccf77b7f6ce10123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **513.6 KB (513642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d5e48820ae5a99e5a5e4e5e8d56fb602a0fb9e597201efa4885aa2e87acd824`

```dockerfile
```

-	Layers:
	-	`sha256:4afb9028141b40d22575dc3b1748640e7a56f864ce1fe72c0722597b7b1aeae0`  
		Last Modified: Thu, 20 Aug 2026 18:06:46 GMT  
		Size: 505.4 KB (505358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e8a6ec4c037d904130ebebb2c403842ad76cf1592ff5c7967bbf7bcea6aa542`  
		Last Modified: Thu, 20 Aug 2026 18:06:46 GMT  
		Size: 8.3 KB (8284 bytes)  
		MIME: application/vnd.in-toto+json
