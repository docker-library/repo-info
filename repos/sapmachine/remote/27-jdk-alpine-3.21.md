## `sapmachine:27-jdk-alpine-3.21`

```console
$ docker pull sapmachine@sha256:20841c8be65db58940d658b8fa547f31915a1298f95894b12f6d04b2ac90552a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:27-jdk-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:dd0e609ac740235c88cfb7e53fe546c7a38449d7b6a61449bb91e49a29e1d942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142513288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c84fd46f2aea56f84d3ee6d1e38ebf84945e3fcea10cca79fae87f2b4e4c5ef`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 16:41:04 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jdk=27.0.1.1-r0 # buildkit
# Wed, 18 Nov 2026 16:41:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jdk
# Wed, 18 Nov 2026 16:41:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074d680a2ae9c296bd410de1ab59ecb3400113e08df43e4ba60dfc82ab5ad676`  
		Last Modified: Wed, 18 Nov 2026 16:41:20 GMT  
		Size: 138.9 MB (138887886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3b10249ac4df61441994edac85269467872698c279844f71258f22808b8e3f5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **465.0 KB (465043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:099f8e4bd6ad92628b930ec0d99b1d6258fe0d5bcf4abab0d1fd048da47b846c`

```dockerfile
```

-	Layers:
	-	`sha256:e511a2e1da5074dab2e391cc4e9903af211c3856f2c15753d6e46b75677a2fb4`  
		Last Modified: Wed, 18 Nov 2026 16:41:17 GMT  
		Size: 456.8 KB (456775 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a81c59d221e985f3c9bfe7c8120d06e9abe51a813b0d986607cb452a9dc1e871`  
		Last Modified: Wed, 18 Nov 2026 16:41:17 GMT  
		Size: 8.3 KB (8268 bytes)  
		MIME: application/vnd.in-toto+json
