## `sapmachine:alpine-3.24`

```console
$ docker pull sapmachine@sha256:c26b9abc4eba5730e2eec9bf39981c2c3111a1eee060a425efba78385822f63d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:cf1dbe3c20228617be786416c989658b43433e2542ab32326626b83b6124a3aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143459220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e33407c0671557e16f46570d16f30815a0b6807605845d60a48d275d80a3903`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:35:38 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jdk=27.0.1.0.3-r0 # buildkit
# Thu, 05 Nov 2026 19:35:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jdk
# Thu, 05 Nov 2026 19:35:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d33050602d595a8702f4fb03a6237b3de33b54b0e41296b7dca25e5d7ef37c3`  
		Last Modified: Thu, 05 Nov 2026 19:35:55 GMT  
		Size: 139.6 MB (139605547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6482abed0eaee1dbd08675e91675f93af79a865aa73d0080dceccf3f4705c3a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **462.5 KB (462533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd76c8ffa3ed86501aaa325446a2c1a1b9554a200cff6ccba9df8b4d03991113`

```dockerfile
```

-	Layers:
	-	`sha256:1869bfd40e400eb0249ab56dd871ec0d4f44d791441eb11b65ac45f96d362e81`  
		Last Modified: Thu, 05 Nov 2026 19:35:51 GMT  
		Size: 454.3 KB (454251 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dcb37c5039058f634a181adc799eaa9d83b4e21442b8e7f7d9f502a6a1294cf`  
		Last Modified: Thu, 05 Nov 2026 19:35:51 GMT  
		Size: 8.3 KB (8282 bytes)  
		MIME: application/vnd.in-toto+json
