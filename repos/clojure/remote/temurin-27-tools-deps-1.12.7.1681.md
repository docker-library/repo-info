## `clojure:temurin-27-tools-deps-1.12.7.1681`

```console
$ docker pull clojure@sha256:2df9402c11a2c212274b780446be6d9a22249b6984892eacfee8f56f6c40882d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-1.12.7.1681` - linux; amd64

```console
$ docker pull clojure@sha256:803689dc046dfc4b521fbaca0a4cd3bbecf952851dee149b32ecaaf201de900b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220178919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c638f1de3d59a8f80794c7c7bb7b0b3786d6cff7b7c7ce989f1cf06d0654d9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:13:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:13:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:13:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:13:46 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:13:46 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:13:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:13:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:13:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:13:59 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:13:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e23bf2f6f5e059f9bb34eec5c77a8fe60567401cc8d87317c05da04b98fb189`  
		Last Modified: Tue, 24 Nov 2026 05:14:20 GMT  
		Size: 93.6 MB (93649638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c585e39fdb88d4557d0f74e8d98874cc5b914aa2af5afe5226d7243a5bde9807`  
		Last Modified: Tue, 24 Nov 2026 05:14:20 GMT  
		Size: 78.0 MB (78001362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7b22807a53d7d9c35750e58b97e50a9fcac5cf6eefb3f1ef84d165b0db93b8`  
		Last Modified: Tue, 24 Nov 2026 05:14:17 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04bc86f4b244d58b616b361e540d9e597483fa9fb06b35696f7f80de2a99d49c`  
		Last Modified: Tue, 24 Nov 2026 05:14:17 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.7.1681` - unknown; unknown

```console
$ docker pull clojure@sha256:4dcb224e1c931208e9b8469cdfe6bc33795ccfb7a94cbbdbde21ae61a2cb962e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7359582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f54bf84f2117cdb7e785ac313811cb635e4788a8dda80de2680968791ec85d`

```dockerfile
```

-	Layers:
	-	`sha256:13c856f2f22e6db4b286cde860e45fba1a153fb42ebcbda673b5e5715eaa6558`  
		Last Modified: Tue, 24 Nov 2026 05:14:17 GMT  
		Size: 7.3 MB (7342973 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6dda87a07467d8abf4f469e20df4067d5322f4fc786598ce098cf1e2e5c2628`  
		Last Modified: Tue, 24 Nov 2026 05:14:17 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.7.1681` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2bc20435166debf32029b1bd3ee55bab011420cd60fa3020fa5675232270aa23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219071900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c700800f17ea9fc047591e2a5841a4171901bb1867f56d2c735caaf383aff52f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:09:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:09:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:09:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:09:09 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:09:09 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:09:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:25 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d58a9ef3026141b458101e81b6b9fcdfe64a717c86bc92cabc54ac976cb1c4b`  
		Last Modified: Thu, 19 Nov 2026 22:09:47 GMT  
		Size: 92.7 MB (92660413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fbdd8a6a11fca6d70d66849f738a183fb6de5397aef77fb18a1052d334f6bb2`  
		Last Modified: Thu, 19 Nov 2026 22:09:46 GMT  
		Size: 78.0 MB (77997483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c9be325bf8d13f722c2990172817ebdc2270906703d6c32cc0a8565686cba9`  
		Last Modified: Thu, 19 Nov 2026 22:09:43 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dd862d02d401c29e7d750933a7468a99b2027f68cc6c2294afc1634b6ef91`  
		Last Modified: Thu, 19 Nov 2026 22:09:43 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.7.1681` - unknown; unknown

```console
$ docker pull clojure@sha256:5455241cf6b94b4c19371bf25409c94a125619b0d24d08ee287cef96aa5432d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7365515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f936cd95758e9142b77588cba0fa0106dfc09b733356a148336f85a6266b5c`

```dockerfile
```

-	Layers:
	-	`sha256:e6dd7627615e34db6eb3adb469e1604835ed0ca23ba6990fa0658052c4a1bb6a`  
		Last Modified: Thu, 19 Nov 2026 22:09:44 GMT  
		Size: 7.3 MB (7348765 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a41c1b4c6cce40c4c4c64aa330a0dd3bb521222fe52efb3e27e99b0fefed3e1`  
		Last Modified: Thu, 19 Nov 2026 22:09:43 GMT  
		Size: 16.8 KB (16750 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.7.1681` - linux; ppc64le

```console
$ docker pull clojure@sha256:aea65bfe483c4f32784b6f9c3734e78f298e10d48bbe2e5776c5654f633c19cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.1 MB (228127946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3bd75d351cdca1d7c582db912bc5d5c54914d75491918dcb330151139430009`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 13:08:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 13:08:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 13:08:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 13:08:35 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 13:08:35 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 13:18:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 13:18:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 13:18:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 13:18:58 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 13:18:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:936a6a1e0c40eccb1f23047919ed843c0c969e4e372431764e94fd25b358e9c4`  
		Last Modified: Tue, 24 Nov 2026 03:39:19 GMT  
		Size: 52.4 MB (52368504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:732ff8f4ca1196b65fef769c8e14593bd1aec841247c097cf9f07f3eb8f9ab45`  
		Last Modified: Tue, 24 Nov 2026 13:12:40 GMT  
		Size: 91.9 MB (91933328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b3e25c369af3e556839897eea62c1b134e860165b9478b7c374c25dc22eb2a3`  
		Last Modified: Tue, 24 Nov 2026 13:19:51 GMT  
		Size: 83.8 MB (83824577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88083676fd3f160a16994790959ff4772c0edd961ad95055843ab481f798e85c`  
		Last Modified: Tue, 24 Nov 2026 13:19:49 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff20280113228ce3b55c76880f7f655e2217a95850c7bb3d05333ad4d58df801`  
		Last Modified: Tue, 24 Nov 2026 13:19:49 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.7.1681` - unknown; unknown

```console
$ docker pull clojure@sha256:86b2f1058f164ac1751d877a1d5e1bc130ea1a57e0b623646063a1b3f9b6e410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7346941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1a3319e28af9204de27c030070d600f714f90e59d2b92f09881641d071938b`

```dockerfile
```

-	Layers:
	-	`sha256:c1ab277fd9a6f0626708345706f8be853c18c12ab71e03d766c796672b000d38`  
		Last Modified: Tue, 24 Nov 2026 13:19:49 GMT  
		Size: 7.3 MB (7330272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a85900900df4fff10bbd6c247b84299d4309e069e3b2268d98bfcef2e493597`  
		Last Modified: Tue, 24 Nov 2026 13:19:48 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json
