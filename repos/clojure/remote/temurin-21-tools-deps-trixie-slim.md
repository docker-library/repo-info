## `clojure:temurin-21-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:ee38c60c5660e2a97a393d04d39ee0f3578f504e6ca925be952a46d18bc62fcf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:6db86adc40ca8bf9d1523b4ff1bde8b02d47bfc3779cb4a393187a36e253944d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257274199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c77ddc5cf08fc16f860159a264404e30231aaa011d2297c801329d9cc23158e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:40:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 04:40:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 04:40:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:40:47 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:11:45 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:12:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:12:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:12:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:12:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:12:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb03224b3a8f32eed35a8fd65147a6409d551d7ad9b2d36a2182db864b04c45`  
		Last Modified: Tue, 24 Nov 2026 04:41:34 GMT  
		Size: 158.4 MB (158440950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee9df958c60c2e31b22d1b014133315a7946a93dbc050d69bb2857f7200f2dd`  
		Last Modified: Tue, 24 Nov 2026 05:12:18 GMT  
		Size: 69.0 MB (68989529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56f5b34ad61d3448b73bfad9adbb879a2ca1884741ce34b71ffb54de2f22d2a2`  
		Last Modified: Tue, 24 Nov 2026 05:12:16 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a472ba64eb219e104d02a3a1f947a2d599210b1d706d02ece293b1e560eb380`  
		Last Modified: Tue, 24 Nov 2026 05:12:16 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3de6e277f7ea066e0e0e5270ee1e009d3c19e99b42dac04ec030a6958c7f8a79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5278976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573d1590cb17c9e07fe20bde3ad5a7c31d8b6fbbd15e060510b718b886930df6`

```dockerfile
```

-	Layers:
	-	`sha256:1dffb988ab6d4959eec3c0dd525c726d64a83ab2fda111815d8e28dba42769ed`  
		Last Modified: Tue, 24 Nov 2026 05:12:17 GMT  
		Size: 5.3 MB (5263965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d41778a3a35bcc86fb7f322a9ef35dea969465d665936cd77672178cb395374`  
		Last Modified: Tue, 24 Nov 2026 05:12:16 GMT  
		Size: 15.0 KB (15011 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:76f487a8e5374fa7d3722bd9355e46f71aa5368ada1ff380fec9083bbda6983a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.7 MB (255712820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692631e1ba2314292c76803353d4890cfd37c4d1409f84150ffb0655d6523a4f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:08:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:08:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:08:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:08:13 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:08:13 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:08:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:08:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:08:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:08:32 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:08:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb886cca630352c5568b38d19f03c167803c39cb7ac85375fcd209c6d9a6d36`  
		Last Modified: Thu, 19 Nov 2026 22:08:57 GMT  
		Size: 156.7 MB (156691649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db024aeb47aef4d4fba4c86cc5e59a00fabe2d429186a0b1415388fdb08ca484`  
		Last Modified: Thu, 19 Nov 2026 22:08:54 GMT  
		Size: 68.8 MB (68805588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63fe77afc9218072d342b56453824b6d9e083d5f1fecc5c2d598575cd5971432`  
		Last Modified: Thu, 19 Nov 2026 22:08:51 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b841f0dd26adcc2ac36378184e48cade70c53877d2c0aa1f04fbd6d2ddbb57a`  
		Last Modified: Thu, 19 Nov 2026 22:08:51 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:63d95b14e593ae0f02e7e93c943207f9c2c2fd7762f921556bf8c17be27e2928
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5285756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca100204e85e4724b23858d26606b624f5e12552acf4e8872d8ca0cd362ef6d1`

```dockerfile
```

-	Layers:
	-	`sha256:af032211b24262fc167318623f7feb9577ecb28d0d9dc1fc225f6fc365a3b386`  
		Last Modified: Thu, 19 Nov 2026 22:08:51 GMT  
		Size: 5.3 MB (5269672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d718c94ba2a8b55dac7d412970087578fd7300851e9bbff23a8826eca5144148`  
		Last Modified: Thu, 19 Nov 2026 22:08:51 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:443be5cefff72507104642242d1f7598f77ac5f47f705b332ac4fc0103690c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265677265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6ce5fa0d990ed48fcbb763cc5e701ecfa7893ea37b4a5816cb39ed642fadbb0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 19:37:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:37:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:37:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:37:00 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:37:01 GMT
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
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aba4188cb6f0f84c779aaa9be30cdc9a9dcae3973be15ba857870e7be06825b`  
		Last Modified: Fri, 20 Nov 2026 19:40:59 GMT  
		Size: 157.6 MB (157596487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7344e5698cc0f23a1271c90e574b5a0dd37b9833437594d35d1178d822174e`  
		Last Modified: Fri, 20 Nov 2026 19:46:08 GMT  
		Size: 74.4 MB (74411582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc25e2ed5164fd6b015e5d9dd72765f08a62c38d256eee9c8eb0a17d773d312f`  
		Last Modified: Fri, 20 Nov 2026 19:46:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0345eeb707dba0798b163fe2f594f5a5c9311ab77a29d6031e2d30db1a6b931`  
		Last Modified: Fri, 20 Nov 2026 19:46:06 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:75fe8f2a5ab361d3f69e9029bb75f53aebf329ba466949284a874ba06fad1083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b829c0b074b2b05b04dc82f17d63fde8942664d828427e44c7be522a27164e0`

```dockerfile
```

-	Layers:
	-	`sha256:629e85375990caee1933db42efc4fede5933dd82c1d60f41acb1a0dd628c262d`  
		Last Modified: Fri, 20 Nov 2026 19:46:06 GMT  
		Size: 5.3 MB (5267044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3721d3661af5089c50368d6e8ef6fb4c902d2079c2db19cd3522726bba621fbc`  
		Last Modified: Fri, 20 Nov 2026 19:46:06 GMT  
		Size: 16.0 KB (16012 bytes)  
		MIME: application/vnd.in-toto+json
