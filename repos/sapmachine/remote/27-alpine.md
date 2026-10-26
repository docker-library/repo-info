## `sapmachine:27-alpine`

```console
$ docker pull sapmachine@sha256:6d43d23a2438bbc7d6d42e24ef48649b761684a8700245ef6bf2fdda61a5bb8b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:27-alpine` - linux; amd64

```console
$ docker pull sapmachine@sha256:fac8530b751baa60562d47014e2d6fd5220ab35050750add24a7c56bdfe5ef60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143286886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af25dee72d0a89bf8b19a66be36d0172c4e146a45593a8e5f6ff1c96fb20cfa5`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 17:50:07 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jdk=27.0.1.0.3-r0 # buildkit
# Mon, 26 Oct 2026 17:50:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jdk
# Mon, 26 Oct 2026 17:50:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7b12b99667eb4298615e8d7203d4d3b3077387a5ad7c3a723447df60bcc0e0`  
		Last Modified: Mon, 26 Oct 2026 17:50:23 GMT  
		Size: 139.4 MB (139434659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-alpine` - unknown; unknown

```console
$ docker pull sapmachine@sha256:77b19c4272f986693e3048a75cb8b7f66c8b41dc19ed1c74e59e1d5b14c27aaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.3 KB (466294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4148d9a3bffbef7c0ff6d9b51263f3cb98a48ba92bcb39bfc1302b9f5235ad23`

```dockerfile
```

-	Layers:
	-	`sha256:f9eb155e84af5a807d144a9716a796ec4fe4c17e518ac5052c6c4f18add5f672`  
		Last Modified: Mon, 26 Oct 2026 17:50:20 GMT  
		Size: 456.1 KB (456096 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ba67499583e86787ef9afb693a77f6e439e8461c45cca856c481d90fb5915fb`  
		Last Modified: Mon, 26 Oct 2026 17:50:20 GMT  
		Size: 10.2 KB (10198 bytes)  
		MIME: application/vnd.in-toto+json
