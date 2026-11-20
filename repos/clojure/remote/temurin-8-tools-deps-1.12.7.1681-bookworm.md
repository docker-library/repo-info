## `clojure:temurin-8-tools-deps-1.12.7.1681-bookworm`

```console
$ docker pull clojure@sha256:223836243e0e7f5de85892bbf15844b66b2ba8204aef8db0132266bbad87b94d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.7.1681-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:57af706043f2de4cbae605b397a8928e069eb71e54376f416d242346d2d21908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.7 MB (181736962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5ac6443c30e2b99a052b51a002494eb91b2bca455ca0ad9cc740a986d9a5927`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:06:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:06:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:06:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:06:38 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:06:38 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:06:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:06:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:06:54 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4b7ea91e320a5e088f9307531f2a8019e8c562c0f40fe126dd69c189f2c312`  
		Last Modified: Thu, 19 Nov 2026 22:07:11 GMT  
		Size: 55.2 MB (55207929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a64df7f66923ab7c4066c88ce0dbcf0f0fe3c4944eeb54253e82329b02f638`  
		Last Modified: Thu, 19 Nov 2026 22:07:11 GMT  
		Size: 78.0 MB (78001903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d1b339100d51417fdd7ef5c8286c7ce775f85efdb9cbc2303386980c079baa`  
		Last Modified: Thu, 19 Nov 2026 22:07:09 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8dfbadf6722da5f24b0601a10dd7cea6619840276a478877c5bb08da4db5e46d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7513345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5da2f1133ced33fc6b99d00258e40ea865fc2b2c927abf5008de86ccd7923a3`

```dockerfile
```

-	Layers:
	-	`sha256:c08534e422d1589f2759893b554a0924df8c64efd8448720b856d1c47e3827f6`  
		Last Modified: Thu, 19 Nov 2026 22:07:09 GMT  
		Size: 7.5 MB (7498997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2170bb195dde3bdcef4e4b1fddaf2051b24bc378210db8b208dfcd30d0107d87`  
		Last Modified: Thu, 19 Nov 2026 22:07:08 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.7.1681-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:70afdf9fe5e4b959d337e705d3fc953772170f9104049e5f42721f524a7539bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.7 MB (180680724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c05032d2e96b12a29a5539c20b36ed8e84c90209ebc962dba6f65a2fb96d917`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:04:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:04:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:04:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:04:29 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:04:29 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:04:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:04:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:04:44 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd3814dfbe47cc1a02f0748e37252f326666ffd90a8f8f678c221de7f0847cf6`  
		Last Modified: Thu, 19 Nov 2026 22:04:58 GMT  
		Size: 54.3 MB (54270349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78588ad2dede29ac267cf9bbb0c11dea3f7490a37111d1e0a25e0a3618fb91a4`  
		Last Modified: Thu, 19 Nov 2026 22:05:03 GMT  
		Size: 78.0 MB (77997275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac6211d86b642ea55c453c7d81517a949214c51ad9bdf2cc09c627785abfc52`  
		Last Modified: Thu, 19 Nov 2026 22:05:00 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:182428fc4e9f2ee02c027e952ddc872f04a08332bedaa352c915e880445bf9b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de66e8e4a0e7c0a94e53b191f441ec1574bd5bb5ac6583fa21dd9cda838c35f2`

```dockerfile
```

-	Layers:
	-	`sha256:bcae5389c8d739e2a23005558116f8a8e9ef483bc5047174162db6d5983a843a`  
		Last Modified: Thu, 19 Nov 2026 22:05:01 GMT  
		Size: 7.5 MB (7505460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:752145b7cc2388b25eda8c9fb2c5725df9557a8abf1bcf1a6113fad44b773c79`  
		Last Modified: Thu, 19 Nov 2026 22:05:00 GMT  
		Size: 14.5 KB (14465 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.7.1681-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:af4fbdf8c04f8d066571c3865baf39482eb71347cf03243c799e3cf0f71ce872
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.9 MB (188882242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a47401ceb6e124405d8c47ebaed55b6d8fb1d06ea95b103fded57f4cedd7b73`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 01:24:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 01:24:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 01:24:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 01:24:40 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 01:24:40 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 01:25:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 01:25:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 01:25:25 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9bd48cc9491ab9cc8f88ccded47ef82d84bd1882aad3246193b066453c94048`  
		Last Modified: Fri, 20 Nov 2026 01:26:09 GMT  
		Size: 52.7 MB (52689143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78cb1525e9b152ef2d816242063777987737415f46bef5baf6ac23db8044365e`  
		Last Modified: Fri, 20 Nov 2026 01:26:09 GMT  
		Size: 83.8 MB (83823833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a5bff172e030540047ba03f43c62d10e065911453ba01903e93bbfb806cdc9`  
		Last Modified: Fri, 20 Nov 2026 01:26:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5b296a924877ecc5c4dec9995f1b703cced4565c71e34c72715af147023c8844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e302658edd118fe9e7b9ce5735ece5be72f934ec9443849311acea8180371f`

```dockerfile
```

-	Layers:
	-	`sha256:1e4886ddcd2decb528a1e073504df2f4360fb7b03e8f33700153964303b78ec8`  
		Last Modified: Fri, 20 Nov 2026 01:26:06 GMT  
		Size: 7.5 MB (7504804 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfb678108594a2532f9faad78ad6a1bf0af1b2ddce6676a3fabc6759f984700d`  
		Last Modified: Fri, 20 Nov 2026 01:26:06 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
