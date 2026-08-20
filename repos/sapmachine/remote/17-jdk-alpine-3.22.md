## `sapmachine:17-jdk-alpine-3.22`

```console
$ docker pull sapmachine@sha256:f5400d9a1a49708be68f513d6aedd6048204714c7d68d97c009ece9f2f66efe2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jdk-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:f58d91764e2b3f4f8aa9462a6b536b01700cf6ea29495e14e5985c82bdbe9a5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.9 MB (207922913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2a5c335b7db85129a47d04e15c4055345aee2a4c2de150e4bb5f278843d821e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 18:08:42 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-17-jdk=17.0.20.1-r0 # buildkit
# Thu, 20 Aug 2026 18:08:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-sapmachine-jdk
# Thu, 20 Aug 2026 18:08:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca8452117246fa8e85b48e51c822cf657284581d4a4dfd593264df6ddea28c2`  
		Last Modified: Thu, 20 Aug 2026 18:09:04 GMT  
		Size: 204.1 MB (204135318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:511bc0a151ae5a09e5307d2701059207a6b3c1fa34907c5cf6fc92739b9fe2a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **518.4 KB (518372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a741a7232d129d19e94e9029d8f36e124cdaa4e697ed241404f4379aa4da5ec3`

```dockerfile
```

-	Layers:
	-	`sha256:4a1891ec6ff57aa02ace0fc350576c8c74b32512456632a2ec7d0f98b314c58a`  
		Last Modified: Thu, 20 Aug 2026 18:09:00 GMT  
		Size: 510.7 KB (510739 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2e4c1be8378c15127277c93d53c53abba1fc1784d7634668178c28ad264cbb4`  
		Last Modified: Thu, 20 Aug 2026 18:09:00 GMT  
		Size: 7.6 KB (7633 bytes)  
		MIME: application/vnd.in-toto+json
