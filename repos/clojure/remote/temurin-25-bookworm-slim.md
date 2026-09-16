## `clojure:temurin-25-bookworm-slim`

```console
$ docker pull clojure@sha256:fd000d3afc0b5c3edded87b2a1603bee7f7d8ed01319540571ad1ab8556fede6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:622f7325b63950127810f37d9eb47c0851cdf387528eff77551af43f27e04e41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.5 MB (187533777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2648b043c78b27650d4055e2269a486bb3be8566c410fc58a6cf7879a48c86c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:50:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:50:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:50:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:50:11 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:50:11 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:50:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:50:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:50:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:50:25 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:50:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f51e38b76aa7eb1ca730a726ea811706b5d5502d598e614bdb8ecdeb8998864`  
		Last Modified: Wed, 09 Sep 2026 03:50:46 GMT  
		Size: 92.6 MB (92615074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:633cd8d23e9d02564d754adc77e2fd32781f7179ffcffd2665a83f99e92c223e`  
		Last Modified: Wed, 09 Sep 2026 03:50:45 GMT  
		Size: 66.7 MB (66685004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc6322d9bc2e87f80be00d2d5c0ece67d955d3d6ec0a317e1cc77e066fbc9c0`  
		Last Modified: Wed, 09 Sep 2026 03:50:42 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e981e104e06951797040ca47eba5980202208c4ff176e796d145cbf1495c8341`  
		Last Modified: Wed, 09 Sep 2026 03:50:42 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d2b2b359fbc8846624368bebc9c91ad206feba2129a8276f90d143d2476a59ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5104035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:305f5b681bca44aaa21f2de47f3bdbf9e3575f7523fd38b05c14788ff990b71d`

```dockerfile
```

-	Layers:
	-	`sha256:3a434756e2f700fe3c5a5f7d41665aaa1a668011d3aadf29822bb8724aeab2aa`  
		Last Modified: Wed, 09 Sep 2026 03:50:42 GMT  
		Size: 5.1 MB (5087356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ccf03384d6c2f9f350f1c41136286c8314a7d848a487eb009e033a50abe9ad0`  
		Last Modified: Wed, 09 Sep 2026 03:50:42 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:378eaf35c37217ee96888b55cc24b334888452a238eefe2797434636b785913e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186334301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aebe62cf765c2908202de31bf5041c3f1a717b769b6ded571cab1f1e50196b50`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:37:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:37:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:37:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:37:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:37:37 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:37:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:37:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:37:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:37:51 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:37:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9706d8400e728f53d1679284e779962b249319b03bdd6ae83c94c205a4a2e43b`  
		Last Modified: Wed, 16 Sep 2026 04:38:12 GMT  
		Size: 91.5 MB (91532217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a768706302d0df105d40d30a8d5f83e594d1335cbbfe0a16c779776f3d7de528`  
		Last Modified: Wed, 16 Sep 2026 04:38:12 GMT  
		Size: 66.7 MB (66683752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:715032a9702e603a03ddd41dd28252944f1db25fd0ce23eb3cd2f79ab28b4d4a`  
		Last Modified: Wed, 16 Sep 2026 04:38:09 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aba616a33857aeea451881fe92870f83fd7897b904eece9a43a8e078c360451`  
		Last Modified: Wed, 16 Sep 2026 04:38:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4d0be8ba8399dada75c8d75d4d11fdfa66b0fa2bae4642d14fc51b99ca23bf1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5109959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:babcee126b559fffcd1f8af8e87a71cf2cca5e8c25dc08d3225844d430ef98f0`

```dockerfile
```

-	Layers:
	-	`sha256:675f010bd20fe7e8511235e0d2a4d547ad27cd71cb171b9a67081a381b258815`  
		Last Modified: Wed, 16 Sep 2026 04:38:10 GMT  
		Size: 5.1 MB (5093138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c9ddda07b3a75a24e95dec2e4388377e7703fe637d5d749c64b89fa89ae9b50`  
		Last Modified: Wed, 16 Sep 2026 04:38:09 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1eed753312a7087012f3ebac9a0a5ffe944811901cffce28749b10d1aeff32cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.8 MB (195832017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf8f5f7dcd9fb7c65f79dd114559f0c50d07a5a54dd8352d7ba6aecc7999e62`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:26:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:26:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:26:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:26:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:26:52 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:27:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:27:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:27:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:27:32 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:27:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a22fbbfc408dae3c28607d79e00a607cf87f23c89af839c30eb985419c6e0a5`  
		Last Modified: Fri, 04 Sep 2026 00:28:12 GMT  
		Size: 91.3 MB (91255803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d5b3d0c42782c32fa4edd206fe464a36185586b09f9ec91353bfc0d9d555c5b`  
		Last Modified: Fri, 04 Sep 2026 00:28:12 GMT  
		Size: 72.5 MB (72498696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109b9ea3f6e9778c611682ae05dbb09b15496b5e8101f1129bb3dae6695da359`  
		Last Modified: Fri, 04 Sep 2026 00:28:08 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a07afd20185f0f2f4981f8ffeeaa6b7208e8b712cecba15b2d41bf42c5e6a4a5`  
		Last Modified: Fri, 04 Sep 2026 00:28:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c70c6145c623d27acd5abec839a3d3b08424b8dc11699748148829f28dd64f78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5092549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4d83b48f7cdda12e29ed90ea26b0b23d9f978f139e81e5055ff7a2c693eedc`

```dockerfile
```

-	Layers:
	-	`sha256:bddb870156516bafd976c705ca480bd63ce06f16a8a55c13953c0e2fdbe006f9`  
		Last Modified: Wed, 09 Sep 2026 11:16:48 GMT  
		Size: 5.1 MB (5075810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8032f6da26da742a789b84cfe1d6b43d617093e0d7e346d7228a8f02b9ed81c`  
		Last Modified: Wed, 09 Sep 2026 11:16:47 GMT  
		Size: 16.7 KB (16739 bytes)  
		MIME: application/vnd.in-toto+json
