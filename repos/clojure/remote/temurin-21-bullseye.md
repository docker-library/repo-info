## `clojure:temurin-21-bullseye`

```console
$ docker pull clojure@sha256:7350623147a1b3c51f3984947a408ade6fb012c05c57643ac949ba8c750e25be
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:a9180c23beab9e2101c4a422b8623d72446a8d1b288699f9f8d729c363b384a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.4 MB (278424894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:444b3da6bdd59e13279d3ec11b02b33be8f90359a59decdbaeea63c987d3b01a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:29:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:29:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:29:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:29:55 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:29:55 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:30:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:30:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:30:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:30:08 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:30:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e39ca3714ff7f1a7c234eeff1d05a92dd9db1bb89fca37a55dfe7fbc16d4626`  
		Last Modified: Tue, 25 Aug 2026 01:30:31 GMT  
		Size: 158.1 MB (158120318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ec183a6240c142d57573957ef1f88376be7c72773a75d65f1568ee9383aa8c6`  
		Last Modified: Tue, 25 Aug 2026 01:30:29 GMT  
		Size: 66.5 MB (66526147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59552a6cd71581294426bd34b5883f8374c20c4f1d5014d7fab175895ea757d4`  
		Last Modified: Tue, 25 Aug 2026 01:30:26 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ecb1054b89e201d2c28eb99bd0b97ff261cfe1f758b2d54d2354293becf37f`  
		Last Modified: Tue, 25 Aug 2026 01:30:26 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:036a871a8ac871635cb1b4aae9564e23ecf47420bd44f144365ba6cdb462f12a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7428434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a12521ef8b9b4b8fe5b8d10f40042df1f8e746ca8ca524db22e91ed13860388e`

```dockerfile
```

-	Layers:
	-	`sha256:43f8554f856311823a12ee41e3df7f8f88f2636881b973c044eba5d69cb89480`  
		Last Modified: Tue, 25 Aug 2026 01:30:27 GMT  
		Size: 7.4 MB (7412502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cece906c4b17ff35a1232f6205827aafa35a1cefa879d08a8b2cc21daa5b2caf`  
		Last Modified: Tue, 25 Aug 2026 01:30:26 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:308d9899e9bcffa40cc72ca5f059712e70fdb9ed9aa8f3e485ab5a6e9903e106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275354835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:126e6fb8f03e03b8eb0fa881ed150f7714cbdeee864a891fd31cd33533e862bd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:34:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:34:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:34:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:34:03 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:34:03 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:34:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:34:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:34:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:34:17 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:34:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:626cd89378382acbf2dac8afd3575898c3bc33ff55e32be34a2b4bd28d9b4331`  
		Last Modified: Tue, 25 Aug 2026 01:34:42 GMT  
		Size: 156.4 MB (156401957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0603f8c6d448ba4c705b80edac6df58d87f1136c68282b3577f8770a90e8da3`  
		Last Modified: Tue, 25 Aug 2026 01:34:40 GMT  
		Size: 66.7 MB (66690495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46d9f25cf55b506b824c0d16fa9bf2c73303fda9151547d9e4c516e1dece195a`  
		Last Modified: Tue, 25 Aug 2026 01:34:37 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f83bb01f2d0815229f900b5de333f7e99b277668c5963cf37bd9c65db901acee`  
		Last Modified: Tue, 25 Aug 2026 01:34:37 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:ade6e59c781c0f85315312cebe034fda2b974ab7d896baf055fd2772281af969
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7433651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b8a898cd383fc5d9cf20655e40e1445a1d88c8573df6cf0495f0ca027cff57`

```dockerfile
```

-	Layers:
	-	`sha256:afd434c716195375da26cb43d759cb343aadd220a9baebe73387814569cf23a3`  
		Last Modified: Tue, 25 Aug 2026 01:34:38 GMT  
		Size: 7.4 MB (7417601 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eded45a3926531470fb9d566b8f0f93c1471f3e51ae3d4f3a00b826cf029e98a`  
		Last Modified: Tue, 25 Aug 2026 01:34:37 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json
