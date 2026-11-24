## `clojure:temurin-21-tools-deps-trixie`

```console
$ docker pull clojure@sha256:8b20a5825fa6d8ac99982b59024234420a44368ba9bcd68d782be0a34e6f3ba4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:8424a47736481198a8c58b77966e301504ed544116fba79846a95a3155c8f50c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.4 MB (290434802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c151d43dbdbd23330611786746fee5944160c6ebf98fb8db096e5bf56de9fb74`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:11:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:11:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:11:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:11:54 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:11:54 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:12:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:12:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:12:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:12:11 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:12:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eec1d84ca69045f5c26cadbada34f762636131b537870bff953f2a1d70d1ee7`  
		Last Modified: Tue, 24 Nov 2026 05:12:35 GMT  
		Size: 158.4 MB (158440951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d3bccf15b75ab6596f4b46fb444b4584e620a6f6402bcfb787182dfea7eadf`  
		Last Modified: Tue, 24 Nov 2026 05:12:33 GMT  
		Size: 82.6 MB (82583026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba8115e6a015c3d5d5275b0eb0c69a76d5d4ab87529a35d6a6c22dbcdabeefb`  
		Last Modified: Tue, 24 Nov 2026 05:12:30 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66de8f4c0864187e8fd472011bef64f138bbba1a0a0c2b109592fcc84af266ae`  
		Last Modified: Tue, 24 Nov 2026 05:12:30 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c62d563ac55f715e8d8bb3d03a72e6d49648733300c4b2a030429005b920b143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7493775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c0f9eefabdb8ce00516d3afcfdef8532f477c730802639585261b843640fc3`

```dockerfile
```

-	Layers:
	-	`sha256:e34233e6655231970aab77a120b641ba68af9933c7436de03802b21930c628c4`  
		Last Modified: Tue, 24 Nov 2026 05:12:30 GMT  
		Size: 7.5 MB (7477867 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78fef7cc27def867dd4ea4f03d6f7bcaeae8c636e9433179dda8a42bf58f2f9e`  
		Last Modified: Tue, 24 Nov 2026 05:12:29 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; arm64 variant v8

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

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

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

### `clojure:temurin-21-tools-deps-trixie` - linux; ppc64le

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

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

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
