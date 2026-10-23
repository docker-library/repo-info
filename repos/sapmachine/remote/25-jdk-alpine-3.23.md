## `sapmachine:25-jdk-alpine-3.23`

```console
$ docker pull sapmachine@sha256:abb23fd94663293adb41c277966f6f02520edca06cdc6590b9563965c5ceb634
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:25-jdk-alpine-3.23` - linux; amd64

```console
$ docker pull sapmachine@sha256:85fdb80fa28c40c9842a7ab3934b5322d84ef6874d12579cf87ee97e076ae9cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229241530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d05c4a9785bc54d42adfc3e95235b9f4df3f8f55f045400871428382cd5ff06`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 16:56:19 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jdk=25.0.5.0.2-r0 # buildkit
# Fri, 23 Oct 2026 16:56:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jdk
# Fri, 23 Oct 2026 16:56:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:879417763bc05ebfabd23eaa1c1f85ef91003d799e9d9ab28744f7f52fbf9eb9`  
		Last Modified: Fri, 23 Oct 2026 16:56:42 GMT  
		Size: 225.4 MB (225389303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-alpine-3.23` - unknown; unknown

```console
$ docker pull sapmachine@sha256:eee0d966a8fe396d177c49f158150ab2845106c201e2f751e89eec8ddbfe63dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **514.8 KB (514766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7b0d7883cb7cbb4f8e2aa50b09a9ba9b872df1b7f831407f5617c59e5af55f3`

```dockerfile
```

-	Layers:
	-	`sha256:db46a199b1be12fd79c66fa9c327a798f0bafcd8101395287dd1273c8ca46965`  
		Last Modified: Fri, 23 Oct 2026 16:56:37 GMT  
		Size: 504.5 KB (504537 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffc9c2cbd10546aa251435196f398f6e2d0aa4d68d7d2246478d8d73a553e143`  
		Last Modified: Fri, 23 Oct 2026 16:56:37 GMT  
		Size: 10.2 KB (10229 bytes)  
		MIME: application/vnd.in-toto+json
