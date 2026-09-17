## `sapmachine:27-alpine-3.21`

```console
$ docker pull sapmachine@sha256:f8070a880091cec0188191d206069fecdc6d0f83e0f14bf83eb5375b577e4036
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:27-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:8f17a9eba2558244c99a1e6abe3e3c586963bf4ff30fd043386c0a1c67bc5e52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142479041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab9c9c59a4707a49ff6d926f4013080834bd6668eed37a05e38bd11cd0c745c7`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 16:36:29 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jdk=27-r0 # buildkit
# Wed, 16 Sep 2026 16:36:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jdk
# Wed, 16 Sep 2026 16:36:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562133416df2a670be69c9f3ac94d928c6dce98f8d29eeb27471c231fd6cc6e5`  
		Last Modified: Wed, 16 Sep 2026 16:36:46 GMT  
		Size: 138.8 MB (138832166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:84e9c6e7e266a64ffca5886acec736b104284dc5496388149b344f15802ad36f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.6 KB (463642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa492f420edabcaa46770eb05b4569e2e96703e24250f25e3042c8d510d6d8d7`

```dockerfile
```

-	Layers:
	-	`sha256:8c98a8f5e7445e362f9e4c69c9eacc7188cf1e6a70e84c30f7a3132916b689bd`  
		Last Modified: Wed, 16 Sep 2026 16:36:43 GMT  
		Size: 456.1 KB (456065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:908e3439fb82fa1ff0c1255df6023ff4e7a64e91b36bd1c10b494ee8b7c1582e`  
		Last Modified: Wed, 16 Sep 2026 16:36:42 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json
