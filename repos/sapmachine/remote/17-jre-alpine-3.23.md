## `sapmachine:17-jre-alpine-3.23`

```console
$ docker pull sapmachine@sha256:178782cd4c49542d6f171a861acdf52e3ee28713645b29d3b11bf261e4a2a205
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jre-alpine-3.23` - linux; amd64

```console
$ docker pull sapmachine@sha256:ff5fb1838e3859b4031c1de04f47185add163ed1781a443f3845997401e82ffc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60866434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab67edcf77144ee3b0d601263dc6d73927ce54b13b60c354dd3a4f2a746378b4`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 18:08:14 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-17-jre=17.0.20.1-r0 # buildkit
# Thu, 20 Aug 2026 18:08:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-sapmachine-jre
# Thu, 20 Aug 2026 18:08:14 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95c313456c950c020d5a5f2c9f3880b84d85eaa771bdcabd680916b7d98c62b0`  
		Last Modified: Thu, 20 Aug 2026 18:08:27 GMT  
		Size: 57.0 MB (57022013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull sapmachine@sha256:af02b0bcb9e6a2e059d2ddcd8d53945755e48ee40ddc63d599b1fb3bbed97eb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.9 KB (434936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9621b1aeb55a4683ef0db964b5186f8b31d889f5d3785c7db27aab09f3628fea`

```dockerfile
```

-	Layers:
	-	`sha256:bf0f3edf1c2cfbe9164bfdb77daa5d6cacfb8d78f6aeec534d262c6969b7bcd1`  
		Last Modified: Thu, 20 Aug 2026 18:08:25 GMT  
		Size: 427.3 KB (427312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb8fd286669859bf674d050570bf3d38c7e8f64bf54337116b110302eb10fa04`  
		Last Modified: Thu, 20 Aug 2026 18:08:25 GMT  
		Size: 7.6 KB (7624 bytes)  
		MIME: application/vnd.in-toto+json
