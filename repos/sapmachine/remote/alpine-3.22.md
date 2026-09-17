## `sapmachine:alpine-3.22`

```console
$ docker pull sapmachine@sha256:f6bd44ce9bded3ca61c4e4d711dea3974f371dd6171a762fbc8c5e18929c8250
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:f8408c9900647664478728a79e4f1652b6c4e8b3214fd10ecd2203cf7e332136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142758642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d3d25c0a5f809ac37c7c5f48923b63de6bb851d6d18be52774c8ef043c52cc1`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 16:36:22 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jdk=27-r0 # buildkit
# Wed, 16 Sep 2026 16:36:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jdk
# Wed, 16 Sep 2026 16:36:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fea7573a865fd44d03cd250e926c1efe338b4c78921bd9b961c575f8b4170bfc`  
		Last Modified: Wed, 16 Sep 2026 16:36:40 GMT  
		Size: 139.0 MB (138971047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2f697e9ff31a67c246a459c066c3c40456f2427358f57642bc4fdd0ff5a8c1e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **460.4 KB (460390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c709fcc59d73f8a3dcc3d255e285b03465e223fd1632b3ad88a1dd8987d387d`

```dockerfile
```

-	Layers:
	-	`sha256:93465a07099d8f564c55b15fb70601e31e709dc5cd442b8dae8baa7ce9b96ebd`  
		Last Modified: Wed, 16 Sep 2026 16:36:37 GMT  
		Size: 452.8 KB (452812 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99eb4bafb3985fa96bd16441bf59bffc66fc47369d7a4bb392aa278ccab6955f`  
		Last Modified: Wed, 16 Sep 2026 16:36:37 GMT  
		Size: 7.6 KB (7578 bytes)  
		MIME: application/vnd.in-toto+json
