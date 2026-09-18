## `sapmachine:jdk-alpine-3.21`

```console
$ docker pull sapmachine@sha256:6f916dec34fac8a8b45de5bc2fa9924764167a1c0435df42a86756872f4d0af8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:jdk-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:b39c60aae5465d2b0ff2901a96eedfcc4a19e252762a2ea0792d107905b0eca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142458216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b86b82fd0bf84bf393a6a2af898f119f3627b7273c67a0c8fea3f3cf91be6b7`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:56:49 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jdk=27-r0 # buildkit
# Thu, 17 Sep 2026 21:56:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jdk
# Thu, 17 Sep 2026 21:56:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7c9e77ff8847fe11bc1d0171a15557c54a048ec55eef22f52eaa66aae0035da`  
		Last Modified: Thu, 17 Sep 2026 21:57:07 GMT  
		Size: 138.8 MB (138832196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:254f182d181341a805996fc8f00afd9ab913d2dce0c21eb3a724a2323567aa9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.6 KB (463643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:642d0a07bdbb91aa9a249c4a63bb93a9076aa66c86a2a72aadd005734b5c0540`

```dockerfile
```

-	Layers:
	-	`sha256:556e54e52ad52e6c093d58cf20bf157d9b592fa29b787cd61863c20aaff3d025`  
		Last Modified: Thu, 17 Sep 2026 21:57:04 GMT  
		Size: 456.1 KB (456065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8689976dde6f20082d063e9949ec1f4f35c96fc1915a08da6fca88e6c871f55b`  
		Last Modified: Thu, 17 Sep 2026 21:57:04 GMT  
		Size: 7.6 KB (7578 bytes)  
		MIME: application/vnd.in-toto+json
