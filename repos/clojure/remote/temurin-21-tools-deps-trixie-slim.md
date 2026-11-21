## `clojure:temurin-21-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:580c30374474f47c1620675f9f543af9ef8316830e9999ed3a90644e08d8fa18
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
$ docker pull clojure@sha256:d1881db3ae38fe903cdd53dc2cea577fba1f201e359c04fdbe3a877cd162bea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257288098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49269a2c691ab3e63d1ad9f31056293d8ad29696db51b9f39cf83437fadd3808`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 18:11:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:11:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:11:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:11:10 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 18:11:10 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:11:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 18:11:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 18:11:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:11:25 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:11:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c513cd3e32fc3be87ea7d716c67fdcbf47b90696e8084bef53626a3e8dfa6b08`  
		Last Modified: Fri, 20 Nov 2026 18:11:47 GMT  
		Size: 158.4 MB (158440949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41dc15e427e3f59cd7479853b2f7c4eb8a336c5de05d1eb5a564e77a13d18cc2`  
		Last Modified: Fri, 20 Nov 2026 18:11:46 GMT  
		Size: 69.0 MB (68989468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:819a92d38e15d60cbf2e1f13170f468e7ed03ca6c682c93c92c9c7ab72cb6815`  
		Last Modified: Fri, 20 Nov 2026 18:11:43 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d529791de305260c069d73bcde212f2b304594a659ca3974a588000797e325`  
		Last Modified: Fri, 20 Nov 2026 18:11:43 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c5e71325719404898ec260039507ae136af2824e91178d9dc57a5a563a2b9e7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fee46256b1874692151b1c7e4e702d4af8223a865239beebbd4b08eec6e2cc74`

```dockerfile
```

-	Layers:
	-	`sha256:11b91da2ad38c6e6826ecf458a937d64b55015a2b0f933a7bbcfb44f2cf76ab6`  
		Last Modified: Fri, 20 Nov 2026 18:11:43 GMT  
		Size: 5.3 MB (5263919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffe44d3ba827706c1622b3856755cdba41d0ce81e789646820b82a126d73f0a3`  
		Last Modified: Fri, 20 Nov 2026 18:11:43 GMT  
		Size: 16.0 KB (15966 bytes)  
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
