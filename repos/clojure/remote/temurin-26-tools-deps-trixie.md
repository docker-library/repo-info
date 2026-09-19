## `clojure:temurin-26-tools-deps-trixie`

```console
$ docker pull clojure@sha256:043cbf2603e2908b2258de099645b93e6ac9a29357da1743529fabb66ced98db
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:fc799d0c9a9d81f3e80842a02b7b883890555e65496aaca89064fdde454ee725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.5 MB (226511172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5474e4e60c2d4bd51b8468cb13c419750e837413f993a74ce1d60b4503eef1f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:18:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:18:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:18:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:17 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:18:17 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:18:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:18:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:18:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:18:32 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:18:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7d8d7bf06f6bd65464d2f756880d6af6c28d67763d06b0c02834df65f64c90b`  
		Last Modified: Sat, 19 Sep 2026 01:18:54 GMT  
		Size: 94.6 MB (94563755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e86aab2e08ae085b0c43b7907c6f01faf0cbc415bb054559cdc9f043e7d59c`  
		Last Modified: Sat, 19 Sep 2026 01:18:53 GMT  
		Size: 82.6 MB (82566681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0570593b8951afca3fa703f2420a69cceb13a37a3380148c64f242b41c1b42f6`  
		Last Modified: Sat, 19 Sep 2026 01:18:50 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e28027dcfb452bafdb735304fdb1bcab195e0f3371c38b92f72f001a5eda8ba`  
		Last Modified: Sat, 19 Sep 2026 01:18:50 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:eb49e6b9db1e31293d64c7c953b0f7bce94f3abb5477e2a9c0399af81a6dc48c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7459608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c91b2c6a31af3520bce7fba8ed8cf169e48678a5639146ac3f2df5fed0ed95bf`

```dockerfile
```

-	Layers:
	-	`sha256:46c32afec0f96860f67e9ede92d6bad3fde1142910b7eaee05c1b9e8e196823e`  
		Last Modified: Sat, 19 Sep 2026 01:18:50 GMT  
		Size: 7.4 MB (7443707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c9702088505366f35aa0f0c3a37f0981f7087ab114d21c17b7a645c493e7633`  
		Last Modified: Sat, 19 Sep 2026 01:18:50 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:153f5577d36af374ab16a54ff36a4fe95186946cd2156ff34d690d8d3ef5a7ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225681195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c9e494494c2ef41b74c534fd5fb91c8ee361a7c73d2c042c6c7fdf67fce8023`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:25:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:25:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:25:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:25:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:25:45 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:26:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:26:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:26:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:26:02 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:26:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe73a2fd1e6fda59cd74d6766f99fc9fa26e77e1ae0fa2b50eea5acf89abb2cb`  
		Last Modified: Sat, 19 Sep 2026 01:26:25 GMT  
		Size: 93.5 MB (93541602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd57b2b8279fba126fb653fb9c3e7c2f712304407fc2b7b47f3f484fc237063`  
		Last Modified: Sat, 19 Sep 2026 01:26:25 GMT  
		Size: 82.4 MB (82389716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73e145bac83a60592d9cb6450a0a65c8d1f53da6468d735af92242bbdebddcc`  
		Last Modified: Sat, 19 Sep 2026 01:26:22 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fabf9edbe6558a8051a922889a51ad4ace5062793318b8188993f445f32fb067`  
		Last Modified: Sat, 19 Sep 2026 01:26:22 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:10433e8493b2649c2fb1caac8cf96b2d2dc96512b8ed4852b6ccc4e0408624ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7466116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2f2334a944fe3530faa50ddc070035a4d4a0e3607c169462404265d5670fbe4`

```dockerfile
```

-	Layers:
	-	`sha256:cdb566620a7f1fc2542bbbc79d67ee1c8172c2df4063ac9b0872cf4281842c97`  
		Last Modified: Sat, 19 Sep 2026 01:26:22 GMT  
		Size: 7.5 MB (7450097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:863b102e83fe57c6160ab2d70c10a6def84d9f5313282d3d637abccf9a04ea35`  
		Last Modified: Sat, 19 Sep 2026 01:26:22 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:efe34d3ac8c91455bda1fa800834cf7a5ec35b79433363dd6acc80b257515cd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238232912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31fe28d9485ee889ceb5e5d1698f908fb4ba7e684b1f0238cd67baab5a61566`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:34:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:34:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:34:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:34:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:34:57 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:35:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:35:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:35:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:35:51 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:35:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4043e66657eddd8a50944b0e499e9fb50476655ec17f37cf9fa8b81d6068c1`  
		Last Modified: Fri, 04 Sep 2026 00:36:34 GMT  
		Size: 93.4 MB (93350784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada429cf761e0958bf0a459654d99184ed6e2592bdbdfb8ff13c92d7345ad79b`  
		Last Modified: Fri, 04 Sep 2026 00:36:36 GMT  
		Size: 91.7 MB (91716805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad8968d917ad5d48d647f517ed98ecca784364e198217fb2c54c7526af7a70d3`  
		Last Modified: Fri, 04 Sep 2026 00:36:32 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628ca30f8063caffbf650ea8f2e9c8557d52b3e0837c182522f340ebb0f458c2`  
		Last Modified: Fri, 04 Sep 2026 00:36:32 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ede285255ffa671f0020f7dbf6d1973d54026045c5a70b339e0d68fdbae3d918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7443070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2932ff5e75a0635fd7864d917833cd3a5d4d38a09ceb0422ce105c2210e0d8e4`

```dockerfile
```

-	Layers:
	-	`sha256:22749c359d375db29c58a2e06682fe5bd4c3535eac8d30172d17f9baac32762e`  
		Last Modified: Wed, 16 Sep 2026 11:03:37 GMT  
		Size: 7.4 MB (7427121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd58ae8d1d2a9d287c46e53efb65edf84cac94aad0aa3f0863930966a1898c06`  
		Last Modified: Wed, 16 Sep 2026 11:03:37 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json
