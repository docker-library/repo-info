## `sapmachine:25-alpine-3.22`

```console
$ docker pull sapmachine@sha256:cfc7706517f6367b466d649fc1ab9dc966db7e97733026000e4635346c934407
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:25-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:a6e11540a4a86727b284eb9c5f60d40854bce1127c80194f37fe4fe89a9b52af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.6 MB (141625544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ea150702a84bb9dbb06febf5415ce4dfadf8fc649debd3cf2128eeb139a52c`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 16:41:33 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jdk=25.0.5.1-r0 # buildkit
# Wed, 18 Nov 2026 16:41:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jdk
# Wed, 18 Nov 2026 16:41:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47889ce7d23474c6efbc3e56bbb33101000df41e4208e05c2657bbf9bb8ece8e`  
		Last Modified: Wed, 18 Nov 2026 16:41:49 GMT  
		Size: 137.8 MB (137831169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e17b79b6cfea439b0be0a8ccc2d19880af9f6fb96f92357317eef6f8dc5dad18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **465.0 KB (465032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e11a56d6871afbcae8c0d817a90487a8faaae63033e8ce24be325388c3aed07b`

```dockerfile
```

-	Layers:
	-	`sha256:cdc31ef6be250555a9812cc7db652479b9b47f26ba6754917b10e3a3bf3cd5dc`  
		Last Modified: Wed, 18 Nov 2026 16:41:46 GMT  
		Size: 456.7 KB (456748 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62d2f36d3b8ab6a9e2ffdca84301f85c8c50302185cfd6bacbd86a838dea3e26`  
		Last Modified: Wed, 18 Nov 2026 16:41:46 GMT  
		Size: 8.3 KB (8284 bytes)  
		MIME: application/vnd.in-toto+json
