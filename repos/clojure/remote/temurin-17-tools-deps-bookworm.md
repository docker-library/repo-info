## `clojure:temurin-17-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:6d508774f16beb9c57cf117f2b573468888de7ab06a054b94a9a2d682f040e34
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:0df96f9e8d091a25a98dc61b8845b4cafaa06c51aa45b4cd16f2416ff0a9164b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272610346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:542ce2da6ca45cb88450e4519f00dd7326793c685b1f2456223251712f54d120`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 22:17:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:17:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:17:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:17:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 03 Nov 2026 22:17:58 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:18:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 03 Nov 2026 22:18:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 03 Nov 2026 22:18:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:18:11 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:18:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de55265390fe6f0043a603b92b7549db033d8d3778cbf8f25b8b36ef17b0a70`  
		Last Modified: Tue, 03 Nov 2026 22:18:33 GMT  
		Size: 146.1 MB (146086105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731cc4326049d0e2a4420eda89f8e5aaaf5bb36066f84e28f8d79cb2cf32563a`  
		Last Modified: Tue, 03 Nov 2026 22:18:32 GMT  
		Size: 78.0 MB (77998646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799a7ca2a68017cf96506606816ec026c5f13debde7c89e89a6cf3ca1c5a7ddf`  
		Last Modified: Tue, 03 Nov 2026 22:18:29 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb6b7976c52a12e8f23baf00bb4f76b8f042041b8c5e176c9c6f8dc922b06c64`  
		Last Modified: Tue, 03 Nov 2026 22:18:29 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d3f0bd7d3599e9b96466d2a4105eb21ea198676c0d40dc57ceddde92b3bf5789
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7394565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330fc7f7b6eda83ce29197d1a381c18191f1bc976b730a6150426ddf22d1a09b`

```dockerfile
```

-	Layers:
	-	`sha256:b72b1c29ba471c9b69cc970d37c999a2e68f5417c404d5e5fc8dbbda975acaef`  
		Last Modified: Tue, 03 Nov 2026 22:18:29 GMT  
		Size: 7.4 MB (7378633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:047488cdcca5cafd72e56cc4ac11ecf32e54afbe5ac7aedd9acb5e36a9af6e33`  
		Last Modified: Tue, 03 Nov 2026 22:18:29 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5c835bc5fcf83fc2447a9505dbff1575c0137702c26398d62da241a3f3074299
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271360374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03695e98409462e0f65a13ed0a7bdf51103fa9852ede3831fa4e43b57a1cf034`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 22:17:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:17:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:17:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:17:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 03 Nov 2026 22:17:44 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:17:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 03 Nov 2026 22:17:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 03 Nov 2026 22:17:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:17:58 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:17:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50466e7df80d328d948fd87395de17269773016c89991393223f272232c6878c`  
		Last Modified: Tue, 03 Nov 2026 22:18:20 GMT  
		Size: 145.0 MB (144957161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48539e73a1b90887052beed9c8c71a4a8209ec9eb942319adefd5a5324602afc`  
		Last Modified: Tue, 03 Nov 2026 22:18:21 GMT  
		Size: 78.0 MB (77996998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dab8b80b0201cf81b0043e60f803e92a48016ec397ff7f97559f6258c06f53f`  
		Last Modified: Tue, 03 Nov 2026 22:18:17 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:181bf9a025dbc1fd2458f0690743aeca093e600094be4506cd06c50d7498f605`  
		Last Modified: Tue, 03 Nov 2026 22:18:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:633e81d59738b0b3523003d06e30d8646421fd7ec5246a3d250e4ec155890969
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0536af0bd01c316167ea2f94e4a7b76d3ae3c77161e15386b28216535b9f310d`

```dockerfile
```

-	Layers:
	-	`sha256:611de1b4f93e58e312716004741124809eacb855d69405a1630a1f2f15c0e142`  
		Last Modified: Tue, 03 Nov 2026 22:18:18 GMT  
		Size: 7.4 MB (7384396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1ad1a3ff6171759c9b344697f0c2701ba98afed5628af9a93f29a2167f07fce`  
		Last Modified: Tue, 03 Nov 2026 22:18:17 GMT  
		Size: 16.0 KB (16049 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:992a691978cce4b200cbf6cc0d007662e25143f2e2d3a12ec27e444bed68a679
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281051681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74d3cb50899a4ee327d6f5649abdf5682c96b3d65d98ad32b95a7e9a834a0d66`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 22:32:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:32:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:32:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:32:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 03 Nov 2026 22:32:32 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:47:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 03 Nov 2026 22:47:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 03 Nov 2026 22:47:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:47:09 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:47:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e6913706a30281fb9bfb0333cf0fba1489b1c88945fb9523758d02af00a9ed4`  
		Last Modified: Tue, 03 Nov 2026 22:37:03 GMT  
		Size: 144.9 MB (144860486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84a913ba3a39a5f3c626144c48f4aed8d0a4e0e64d1a33643e0dd66f3aa5542`  
		Last Modified: Tue, 03 Nov 2026 22:47:53 GMT  
		Size: 83.8 MB (83823843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90543bfe2b59e62793e45dbc72e6b74055ed6460e1cf6932014e8bc768d02f05`  
		Last Modified: Tue, 03 Nov 2026 22:47:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d8f4b5a3b1c12f8bc2aceb2942985f26fe2935192f74d1ba23ee57a29c9869b`  
		Last Modified: Tue, 03 Nov 2026 22:47:50 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f68037e14ba396daede048d402efa601de26a68e872abc0d00a1434493adb0fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7398579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe6ba863b572dd1861a818aa089f2fdd16542f2c897400a4a063b56df409670a`

```dockerfile
```

-	Layers:
	-	`sha256:2f965621984fedafad56f07d069b17ebf0979e93121f24e02db90b0cfb17746a`  
		Last Modified: Tue, 03 Nov 2026 22:47:51 GMT  
		Size: 7.4 MB (7382599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ae6abdb766084331b613534e3f22cd5d15c91b74e1ca95e6c3385d882c9e2bf`  
		Last Modified: Tue, 03 Nov 2026 22:47:50 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json
