## `clojure:temurin-25-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:2a76d4912dfae7d8f0efb918b5e86eefe023709b00f3b33e6b3df53a190814ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:ed04f0d7f137a9cdbe74e907cdbe264401ca8be2376f1b1c61e59b17947aeefd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.9 MB (212864898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75227259ac5f42b6a5e78999757840a9c9324a678f616764699745c9735b73e5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:22:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:22:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:22:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:22:18 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:22:18 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:22:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:22:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:22:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:22:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:22:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c86c48e8c784df90506ae2feb28681d80ce745a8f8de37c3094fe76ed92fb7b`  
		Last Modified: Tue, 14 Jul 2026 02:22:58 GMT  
		Size: 92.6 MB (92574624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4da6311cb3a422b972418a1f5bf48ac89c96bd9c7a24d4d7c531962cca7ad99`  
		Last Modified: Tue, 14 Jul 2026 02:22:57 GMT  
		Size: 66.5 MB (66512658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:692dda70397acbcf55f6fd1ed5b65ef7a4b37bf024575dc2d6730234e16504fa`  
		Last Modified: Tue, 14 Jul 2026 02:22:54 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d6b9cd41adb881a715230f9517e47f158bb5119fe820a57f40e037232539d2`  
		Last Modified: Tue, 14 Jul 2026 02:22:54 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:4ab8627f7fd82d0d20612a13bc7d1d5182ba4c66031082b65fbf162e236454d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7390120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5afe42287973044dcfb325cabf5f00e7698fd6b161a05e3aee18451299607e0f`

```dockerfile
```

-	Layers:
	-	`sha256:27dae5f1c1b16f5f272af9b802c35fa32bc92028d214b889f98f5d7f9d8f92e8`  
		Last Modified: Tue, 14 Jul 2026 02:22:55 GMT  
		Size: 7.4 MB (7373519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c74984f38ff349a58d7c28455be8cc04950aeadb4aadbf48f5744cff1ebe3ec6`  
		Last Modified: Tue, 14 Jul 2026 02:22:54 GMT  
		Size: 16.6 KB (16601 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:df23e02d2e3a24155b5b02d85787ddecc69c1b5b85b41422a70f7b4aa5ef2a5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.5 MB (210482153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bbe08713e7a37214849e872c4a4e15d364a99616c5daf86972f48f46ed40abe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:29:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:29:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:29:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:29:25 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:29:25 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:29:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:29:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:29:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:29:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:29:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:491615e39bda6aa1a34e2db84d3d2a5fdc79aef170b83652d97dc3502f75ad6d`  
		Last Modified: Tue, 14 Jul 2026 02:30:02 GMT  
		Size: 91.5 MB (91542291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a042d8f3cb575e7b5e4c021354bc43e0bae0e034393ad4d4a7a5fa5451a7989`  
		Last Modified: Tue, 14 Jul 2026 02:30:01 GMT  
		Size: 66.7 MB (66677929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d861ea4f76750e28d716b88d1da8d498eead7788db860193b9196686eda3c36`  
		Last Modified: Tue, 14 Jul 2026 02:29:58 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c30dd6440ff6a5a9d35baa785a26149517b278b0d3595700a06a8125df11014`  
		Last Modified: Tue, 14 Jul 2026 02:29:59 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:cdf9e76ec2bd8f1afb5d8b7a26d10c307552ce6d5c8b09ea11953a2945ead85e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7395382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f54e89f6fc96a817fa4dffdeaed59ef81d21b0c9a897aaec0740713545004e8`

```dockerfile
```

-	Layers:
	-	`sha256:9e4f9ae1515499b355226dae259ccf74d6336fd61e32c047cc4dacfd951551e6`  
		Last Modified: Tue, 14 Jul 2026 02:29:59 GMT  
		Size: 7.4 MB (7378639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4dbb676c447928d676ef68772b5227448eb1a00f36da643b2924b8c49379782`  
		Last Modified: Tue, 14 Jul 2026 02:29:58 GMT  
		Size: 16.7 KB (16743 bytes)  
		MIME: application/vnd.in-toto+json
