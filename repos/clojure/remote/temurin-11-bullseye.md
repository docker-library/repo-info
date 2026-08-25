## `clojure:temurin-11-bullseye`

```console
$ docker pull clojure@sha256:83a4e97fa55b7c0c38a859892017670f1fe38548635a31b4364b43bb4bda036c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:4831f80acca9bee059c69f26e2d1f146545bbe2d771185f257682448de3aa2ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266165635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7df8741d12210d4e2b8b4bb75cf5ef83e79bd25c7dc4539a93e94019fc81514`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:25:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:25:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:25:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:25:39 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:25:39 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:34:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:34:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:34:37 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6429775844f935ee0218303c9136052f64299b7758e8fd7b1281b6c3d8dced3`  
		Last Modified: Tue, 25 Aug 2026 01:27:16 GMT  
		Size: 145.9 MB (145861401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab239e7925018691525b714fd468deab6b69a892a60ce1fccf6755c6290db12f`  
		Last Modified: Tue, 25 Aug 2026 01:34:54 GMT  
		Size: 66.5 MB (66526196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01bade09f8193239304314908b197966ca38fc2a9d439f2b62b0b0f9cb67acf`  
		Last Modified: Tue, 25 Aug 2026 01:34:51 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:000d98dcfa78e6edb7a10ed8e5a3f3151dba8ca2f499b1dc76a2419f6539c9c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7443573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83f75c8b40e94cd4e2d8e2fd257f17f4bb7c22759ab61fd6c069c878c7e74008`

```dockerfile
```

-	Layers:
	-	`sha256:58d93bb563e44d77aab04f90022ef38de057269cac1ed9fd976483d8952b5656`  
		Last Modified: Tue, 25 Aug 2026 01:34:52 GMT  
		Size: 7.4 MB (7430166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1afe1b81bb99e1dad43f472013525ef74677541ce31d00686245f90ba8a2e81`  
		Last Modified: Tue, 25 Aug 2026 01:34:51 GMT  
		Size: 13.4 KB (13407 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:08c5169a3ae6e3f5e8e0738f27ca1519d6b91f2b1b075d373c47c2024a8d8247
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.5 MB (261518877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e03bc50afed04d355655b37d19c3e71c5661aae6722195b0a6dfdfda7dc9d811`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:31:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:31:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:31:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:31:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:31:04 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:31:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:31:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:31:17 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7deb39129612d8b4c806c5ddacc05f8d1b0ec2559a270abf94eaa28f89718040`  
		Last Modified: Tue, 25 Aug 2026 01:31:41 GMT  
		Size: 142.6 MB (142566566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06049352697a277f9a36e26234e82ece6e78ced3d73c2aa4ce396d1300e361e4`  
		Last Modified: Tue, 25 Aug 2026 01:31:39 GMT  
		Size: 66.7 MB (66690325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d096a3897f9e3fd3e349ff65ba54f66ac4801a603d861a9c4fb61d61d19723c`  
		Last Modified: Tue, 25 Aug 2026 01:31:36 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:efb3668835af1b2cf930f44b61cba1fec4cf8a8d250f62eeefbf7ee126e4ae0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7450364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:266cda05c916ea047f57ccb9fd1db39902982d87f0f3f27236e9d69c21399058`

```dockerfile
```

-	Layers:
	-	`sha256:69aa34c7c623dc6df19f442287354768fe70d54deca7da0637bd6f5af8485796`  
		Last Modified: Tue, 25 Aug 2026 01:31:37 GMT  
		Size: 7.4 MB (7435883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1a8862bf3f334e88b2262b547188ce7e14a29d110ac0fa02439f7cef3a28829`  
		Last Modified: Tue, 25 Aug 2026 01:31:36 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json
