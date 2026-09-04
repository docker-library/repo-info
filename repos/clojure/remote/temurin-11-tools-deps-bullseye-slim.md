## `clojure:temurin-11-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:e10366b4ebe1fad2ee458ede604047c15c08261cb9b91848c30100e348477c7c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:174ebb68fbffebd46866f81935c25e6a34f9ddd10bc051d2dd172bf1b14d1d76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.2 MB (232249678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c70ad441477b22888c20a02e974fe0524762c4709c00405892a8baabd4f80d6`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:01:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:01:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:01:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:01:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:01:37 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:01:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:01:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:01:50 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4705738e5e0492efae5d2523aa791e06c852e2e1acb5e70a365cc08f9da0c556`  
		Last Modified: Mon, 24 Aug 2026 23:20:36 GMT  
		Size: 30.3 MB (30259727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd4f8ab790cc928b82bd63fb8694425ed698838c374a50c9ce6d279479394036`  
		Last Modified: Fri, 04 Sep 2026 00:02:12 GMT  
		Size: 145.9 MB (145861369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7ec432d8cde5d91aa133025df872c0154fb24310c558a25f4314321abf536e`  
		Last Modified: Fri, 04 Sep 2026 00:02:10 GMT  
		Size: 56.1 MB (56127939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86af01c5a580568e23edfe55427e0fcf81187e7db5af98eca89b74519c16f535`  
		Last Modified: Fri, 04 Sep 2026 00:02:07 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e7fe864d70438a7f5f2782ea1c96cdae7354d61ef5f0462339f6cf1d23f899c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5356987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c56c71d086804e6e97c927cf182e50dc6a7606365969fc9a810ede4889fab3`

```dockerfile
```

-	Layers:
	-	`sha256:8009b6127a6680abcb769eadf2034a63b2c9b71ebd01b8c3ccd69f7e2794fd0d`  
		Last Modified: Fri, 04 Sep 2026 00:02:07 GMT  
		Size: 5.3 MB (5342566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6a4a587207fa0ad4b9c566ba7f6c6c83cbc3d44a86318d39a20d42f3e67822d`  
		Last Modified: Fri, 04 Sep 2026 00:02:07 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1c73104b365238b5ca546bbb5586b743313d9021c7fa024945bdbddc84631347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227603690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b817c57aeca3d07784ac6e61d37996e920fdc264318eaa310caafea5684503d`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:06:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:06:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:06:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:06:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:06:12 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:06:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:06:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:06:25 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:104799d4ff5b18bad31a13cbbc383730eebef29a1cac161b7905792a8dbe5bd3`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 28.7 MB (28749031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc982df55c7bd5d7c26b926d0d3d3bfa28dc5d9a45b921656598c81991f4f3f1`  
		Last Modified: Fri, 04 Sep 2026 00:06:47 GMT  
		Size: 142.6 MB (142566616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734be736b2b05b6301f95d079140299634614f6a7f31d1639dc0fd4c33ba4707`  
		Last Modified: Fri, 04 Sep 2026 00:06:46 GMT  
		Size: 56.3 MB (56287397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ff8811653740b6dec6c2e4b3907f76b217c5cf4f00d94483fa2d1fff77eccf`  
		Last Modified: Fri, 04 Sep 2026 00:06:43 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f52eb1d734e773d053759bd94b3ce6e8c7981e54f98e088ac6dc3bbbacd45020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5363455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8747e1909eb15990c68605ca2649fb6257cc2fd1cd68fd021e5b5b1753fdbaaa`

```dockerfile
```

-	Layers:
	-	`sha256:731b4d3c97da95d6938c4b5b9f29d63ce7bbade69e9f09d31c9572de05db1370`  
		Last Modified: Fri, 04 Sep 2026 00:06:43 GMT  
		Size: 5.3 MB (5348916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:142c09d85c1566ee302d4d86cd38a87eefb557d4013fc1b3d507ba2adab4ddbc`  
		Last Modified: Fri, 04 Sep 2026 00:06:43 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json
