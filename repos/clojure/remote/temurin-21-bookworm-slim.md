## `clojure:temurin-21-bookworm-slim`

```console
$ docker pull clojure@sha256:36a676acbb959089a9ad4de6b6a25fe4794ff1187ba5ef3606dd9ba285d0792f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:9fdf0fd1bfe115afd8406494421511e8739f92491345ee5b99d28d742ed30228
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (253038870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5515cb0e95b75dc47afab6c32b87047319f5f9fd0240f665eb3f0513644b9f0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:35:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:35:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:35:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:35:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:35:37 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:35:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:35:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:35:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:35:51 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:35:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a682e359d525eeaaadd74fd20eb13248db8048e1f019773b145a1011d5603f2b`  
		Last Modified: Wed, 16 Sep 2026 04:36:17 GMT  
		Size: 158.1 MB (158120292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef2c82330e79acaeb35b73dfcf9dad5ec604982fb8c04569fbb81b33005bbb6`  
		Last Modified: Wed, 16 Sep 2026 04:36:16 GMT  
		Size: 66.7 MB (66684884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:724dd58d4c8e69092a3661de7b66aa8db13ea9bdb56737cc3fdd689d3edf421b`  
		Last Modified: Wed, 16 Sep 2026 04:36:13 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf44f27182b525dde3935eb79d3a1bb0487c6e52f60b5fe415c9d9b49c8fa41c`  
		Last Modified: Wed, 16 Sep 2026 04:36:13 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c8ae2eb17870b07c54f6348f7b06bfa96c382b52a62ab4e392657c24aa1be2bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c49492394d84050963d942ba451f1a01ab708025a0948459355135db143ed72`

```dockerfile
```

-	Layers:
	-	`sha256:2ee408a2335677aaa53086a0b780e8f3581fa61813d3ae5fb20b850a892019c4`  
		Last Modified: Wed, 16 Sep 2026 04:36:13 GMT  
		Size: 5.1 MB (5121116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fcb1d3870953f84efa4e1ad5d768fc052cd6cd0a91da7aa62810a286aebbb5b2`  
		Last Modified: Wed, 16 Sep 2026 04:36:13 GMT  
		Size: 16.0 KB (15989 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5838c21b70f9cd0e553f5947a14254198fd875bb7c4758381b58b829250bb137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.2 MB (251203983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a0dd030fa081456c74756185f9be76ab4bf9c605af7ae04723d911865253a81`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:36:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:36:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:36:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:36:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:36:07 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:36:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:36:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:36:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:36:23 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:36:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e473d6d9d35c896abd7352c96fff9b6e7a08317702beaf9f395d3d1778cf91`  
		Last Modified: Wed, 16 Sep 2026 04:36:48 GMT  
		Size: 156.4 MB (156401941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ecb358c0052c6f8ba66652b74c49d84aacc12f706ee4905ed9c7c28082a249`  
		Last Modified: Wed, 16 Sep 2026 04:36:46 GMT  
		Size: 66.7 MB (66683706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c770fc7f4505fe14b872024b17ded8397397d45c5de821a536c2d93267ba4d3`  
		Last Modified: Wed, 16 Sep 2026 04:36:43 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1ee2e65ef25a8906ca241913086c63df2374d182a379e82863b3801cf35cbdc`  
		Last Modified: Wed, 16 Sep 2026 04:36:43 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:42759c25d0456b543dc5c995f8505994709fdef229c165c0ecda20b05fba026d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5142985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49353a5b9bd95c5e00a80eb99c791dc804616b633b4f964ab9077f801f50237b`

```dockerfile
```

-	Layers:
	-	`sha256:575c0ed8d5c1c0c5044bb0b185227c2c15245db713d75129f2e60cdb2838cb55`  
		Last Modified: Wed, 16 Sep 2026 04:36:44 GMT  
		Size: 5.1 MB (5126877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2a467bbff714835d2f543df136dba73c387ba4014117bff9a1681dc05396267`  
		Last Modified: Wed, 16 Sep 2026 04:36:43 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a2bbd1c0d8362d7efe9ae82283eeb0a31393d2f9ce13b88cad5569ca791aff27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262851266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed505c3b8f26283b6fb10260080341bb4a331cdbaba92e4518451175eff29432`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:20:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:20:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:20:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:20:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:20:34 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:21:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:21:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:21:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:21:27 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:21:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d866b20eba167def1cd6e612f1d7dd17ba8fe02043e41bcb160cbb8bc3c90ab6`  
		Last Modified: Fri, 04 Sep 2026 00:22:09 GMT  
		Size: 158.3 MB (158274917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cde327c20342ccac360a596d5bf5f95928e0365cf5a11ce8ed530c58a5d9d4f9`  
		Last Modified: Fri, 04 Sep 2026 00:22:07 GMT  
		Size: 72.5 MB (72498830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed8d61d6c38a770f7388d8bf2aac4455c4d5762e608f94842058a17e50dc9d6`  
		Last Modified: Fri, 04 Sep 2026 00:22:04 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfb43243bf8a5761ceba9c4d6bb3c728f2cdb9e77a0eae9847d5c11d26dce23a`  
		Last Modified: Fri, 04 Sep 2026 00:22:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3b9e873d863c44ba8dc46a4b4ea85f2b7a093ae45b22cce7f78f2e4f5d7fd494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5142283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe052333a6d9209eeebae0610240e8334277077a675a14f35b65ee11de11d45`

```dockerfile
```

-	Layers:
	-	`sha256:1a3e4ee29989a7b14a858d8a0b30a12b2637a9d994a6e93dc995157b79cd179a`  
		Last Modified: Wed, 09 Sep 2026 11:11:06 GMT  
		Size: 5.1 MB (5126246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0980532f403774b7f6ff695e1e2895f449524ac1e05fee0e485df48c3decde7f`  
		Last Modified: Wed, 09 Sep 2026 11:11:06 GMT  
		Size: 16.0 KB (16037 bytes)  
		MIME: application/vnd.in-toto+json
