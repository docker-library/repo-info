## `clojure:temurin-17-tools-deps-1.12.7.1681-trixie`

```console
$ docker pull clojure@sha256:9f882a23325a81d9cd4dfd7218dd78b15c39508d800a620fb7eaa4e4becbd7c4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:16c4d2c3de7c5d71e0930ae31217c45d73c6aaca2ebc52762e4f18bc3eca7fa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278071092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a1eed4f01a2fa838d7de28e47dc88ed5a49164d7a8ffcea9fef698a01054ce3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:08:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:08:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:08:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:08:01 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:08:01 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:08:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:08:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:08:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:08:18 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:08:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576fe48d1a444f936608415c89e43021156827d57f7bc72a9932de8d981a65ec`  
		Last Modified: Thu, 19 Nov 2026 22:08:42 GMT  
		Size: 146.1 MB (146086151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b93068c3426c2eee39a868603c5ee564fa079121bf6b07ee56a0cd2ca4757f5`  
		Last Modified: Thu, 19 Nov 2026 22:08:40 GMT  
		Size: 82.6 MB (82570885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f8695509e42d4c46c98af8121b0e69cb93f5e6810263a20c6e7ed691b648b1`  
		Last Modified: Thu, 19 Nov 2026 22:08:37 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:998e25d9dedccfebaf7bebaa4f2478a9e469f40ab12c2326425d112440e02760`  
		Last Modified: Thu, 19 Nov 2026 22:08:37 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:412f4e18ead5b2a8a32344bf33993a091074aa6d41f5c39cdf145b93104569ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7492669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:867c6c2168b821302e606d3f8c99aa0066f614a4cf3ad75c94db2777bd6327f8`

```dockerfile
```

-	Layers:
	-	`sha256:a63a5e995affd5765edae05289d549bc131f9cc6785510d74b5cef3c457c810a`  
		Last Modified: Thu, 19 Nov 2026 22:08:38 GMT  
		Size: 7.5 MB (7476761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f35651fa4c3dfbf21a95dcd41e8dabdcdcbbb508b2203c43135841588fe8bd74`  
		Last Modified: Thu, 19 Nov 2026 22:08:37 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ff4d75e684181139091fe4d530805a63a4cd9a8a54b02358157166ece33c4866
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.1 MB (277131324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb1a0a3b76bdb56b5b337ecc0554833cbc0651accfe058bffcd4b24b2ca7837`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:07:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:07:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:07:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:07:17 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:07:17 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:07:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:07:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:07:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:07:34 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:07:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efcfa4eab02808074c32e1614e9a5937ddf295b7ebe1dd2278330feaa93459c`  
		Last Modified: Thu, 19 Nov 2026 22:07:57 GMT  
		Size: 145.0 MB (144957162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30fe9f5f19b286ab039fe113ec6b08d53c58721fd9b954fbef110af1dd3600aa`  
		Last Modified: Thu, 19 Nov 2026 22:07:55 GMT  
		Size: 82.4 MB (82394017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:641cb2238b595c09e65272994a093af90a2132d8b12df5b39aa2caee808d9838`  
		Last Modified: Thu, 19 Nov 2026 22:07:52 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df4f03b59812f39ae1b12ff500cec7b5c0aa25a39bded9ecf4d24806b2233b2`  
		Last Modified: Thu, 19 Nov 2026 22:07:53 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ba7237f357077760dccdb67fef0577371be647d8a48180cab80daf5eed148b78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7499180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8145675dc6ba03977a1a6c7169cb3c9789a492a9977ba21c98d6094ccf355888`

```dockerfile
```

-	Layers:
	-	`sha256:aa3d0752cd276ef3490c29377c8f9535c441d24443d35319fbc49e63c0a7c508`  
		Last Modified: Thu, 19 Nov 2026 22:07:53 GMT  
		Size: 7.5 MB (7483154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:325363a5d4f94c0168a3f982229c06d3ff0c3360411c6d2dc3d5034fd420cfd2`  
		Last Modified: Thu, 19 Nov 2026 22:07:53 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json
