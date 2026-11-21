## `clojure:temurin-21-trixie`

```console
$ docker pull clojure@sha256:c0929783c3f958748335e021dbb528265cbff28c8335640ec1b434661b0f30b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:e000e2024b4dda67a40d5fd11d258f7d1993506eb487bfdf5b38614e8b367a01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.4 MB (290425909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:492b88baa2ec104628077c1c38ae6fbb30971e2204c48eca9ad471f2b899ce5f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 18:11:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:11:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:11:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:11:05 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 18:11:05 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:11:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 18:11:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 18:11:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:11:21 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:11:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00ac02e47cf1129718ff5fcc5750d25e806691eef170933abb59b4b30b7bc1e`  
		Last Modified: Fri, 20 Nov 2026 18:11:49 GMT  
		Size: 158.4 MB (158440960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1997fa84fb345e25b3274d5ac054ac6afbd8cbb9af2610b9686a1f29711eade`  
		Last Modified: Fri, 20 Nov 2026 18:11:48 GMT  
		Size: 82.6 MB (82570891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38d39fe6aaa9820a999109b37a400aaa2c8037d603dbb2a9539e76caf3f6727`  
		Last Modified: Fri, 20 Nov 2026 18:11:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317d2970d3ecce3f39c40ab88cf23bd993c3182dc58c13f84532f396f7723d52`  
		Last Modified: Fri, 20 Nov 2026 18:11:44 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9f9010d7d7be346451f1d61753f8f9ecebc51fae72941f95739ceafdd7999208
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7494529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff0ef2c7e2ae1ab1b430088acbbfe1d94065f08566ae24a8d0aab522560360d`

```dockerfile
```

-	Layers:
	-	`sha256:43dd1fe818325791349c6eb2eb016d155a60b6becead853a09e299282e4a2b85`  
		Last Modified: Fri, 20 Nov 2026 18:11:44 GMT  
		Size: 7.5 MB (7478621 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb1bbba33c603494aa705b55229d2947e33f3e77db9bf86a27de65fc66169550`  
		Last Modified: Fri, 20 Nov 2026 18:11:44 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:35ba0775b5d85354e36a00eeae173316cf3904bfb6f889506ad4467200fa6a25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.9 MB (288865417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1550f42c41cadca8665a955e97a75df3d9f22b86e182c4952d79eabfdc40e35d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:08:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:08:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:08:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:08:11 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:08:12 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:08:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:08:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:08:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:08:29 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:08:29 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab35163776a5446b68f1a530ca8379a0414e0c841d3dd098a5e85627146a5821`  
		Last Modified: Thu, 19 Nov 2026 22:08:53 GMT  
		Size: 156.7 MB (156691654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d57cef349281559cb8cbf034e41c92ef16aef040ff347205eb06b5be821f7116`  
		Last Modified: Thu, 19 Nov 2026 22:08:51 GMT  
		Size: 82.4 MB (82393611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc3838c428c4d60d862104497b51e636ad9cc8c5a270a2c0ba397505b8fe2e26`  
		Last Modified: Thu, 19 Nov 2026 22:08:49 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9aa41e3d568e8926ff41a8acc2e0b2316bffa93b4a90e08631d00302665d958`  
		Last Modified: Thu, 19 Nov 2026 22:08:49 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:65d243dbe006c8a6e30718b72cd755a9a413aca538cf258c7b24a86dbce0d81f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdffa9faadd544810526a1daaf6accbb586ba3c2aa4b0ba560c51ea65d9d0eec`

```dockerfile
```

-	Layers:
	-	`sha256:72afdfd26dc430ac0c6610578bb5d35cf5a6f328bc7b6caab9619e413a734f91`  
		Last Modified: Thu, 19 Nov 2026 22:08:49 GMT  
		Size: 7.5 MB (7485006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62789fb9bdae172c2e4812778aa5279fda1d28ea9af51935ca156497690950f1`  
		Last Modified: Thu, 19 Nov 2026 22:08:48 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:e6eafd4b4b643801912064ebc6281c5ab8e126876caf0e37483da280f7620828
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.8 MB (298813815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5ba9e2fb346a08deed66b8b10eca7752b9be54e21b8f53df006f3c069168743`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 19:36:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:36:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:36:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:36:46 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:36:46 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:45:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 19:45:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 19:45:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:45:20 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:45:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a01bca34f32a7563bebb74d43748e34221e6723675a95cef813ab7b59b2c908`  
		Last Modified: Fri, 20 Nov 2026 19:40:47 GMT  
		Size: 157.6 MB (157596498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42b506f40ad2a4c5b96bfc1c39ad2c6892f3a61a37aea6e7cd8a969d6423f654`  
		Last Modified: Fri, 20 Nov 2026 19:46:10 GMT  
		Size: 88.0 MB (87990180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc25e2ed5164fd6b015e5d9dd72765f08a62c38d256eee9c8eb0a17d773d312f`  
		Last Modified: Fri, 20 Nov 2026 19:46:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0345eeb707dba0798b163fe2f594f5a5c9311ab77a29d6031e2d30db1a6b931`  
		Last Modified: Fri, 20 Nov 2026 19:46:06 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5a2050fcdd8eb560c7ad4cd51234b771be8739014912eaf5b3b33872aff0542d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7497748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b1af9bf6fe74318333269c0020d2b0363beb35ab4149b3b299a98811e53822`

```dockerfile
```

-	Layers:
	-	`sha256:ef710adf6933a82bf010f629a54126cfa5383febf6a8f16f3eddd7a9350a6200`  
		Last Modified: Fri, 20 Nov 2026 19:46:08 GMT  
		Size: 7.5 MB (7481792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7cabd782716d2164a3f9d13f1f2f9af5b6dbfb63299923c791f649f81346c79c`  
		Last Modified: Fri, 20 Nov 2026 19:46:07 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
