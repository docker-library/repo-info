## `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye`

```console
$ docker pull clojure@sha256:e18783ac41d94e257851b8e05aa40056a916288ab43c652a26dc624600460d68
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:1a094577a60f3dfdfc27ebd7668a0724f3fdf0b050952d59e7fdd691f63cd124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266201479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ee2fbfd18e595a7c1d704615b643cc97f53869ff51454cde86a1971a47aab6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:50:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:50:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:50:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:50:41 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:50:41 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:50:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:50:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:50:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:50:55 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:50:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f08f8c74bf7eb53c8e5db7f70e9221fb31ac86a0a397ab0051c6a8c1d7eef94`  
		Last Modified: Tue, 04 Aug 2026 02:51:18 GMT  
		Size: 145.9 MB (145905422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05bb86642af6baca3219f73219b76e98768da46d8820c8159e525239e19cff47`  
		Last Modified: Tue, 04 Aug 2026 02:51:16 GMT  
		Size: 66.5 MB (66518437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b413afefb9f40410685b31b4b42dc7aac390e3936eb2f64a04ba3c64eef455`  
		Last Modified: Tue, 04 Aug 2026 02:51:13 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a64ffe7670df1d59902eeec0df728b51d5ee000fb8c8fa6a79f49d4a8600b73`  
		Last Modified: Tue, 04 Aug 2026 02:51:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:66ec1e6d3114c613bcd5c844a8259843e2ab2bbdf66726ae4d8e1efd212a5de6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7421380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9db9d2cfab22ba0ab8e5604ffff76c21762be5a2d089c90786cba3bbdea0df8`

```dockerfile
```

-	Layers:
	-	`sha256:7813ecd30783388df20f9504dd4daa23c22f389eb5f050a256a0e06a45a54b4f`  
		Last Modified: Tue, 04 Aug 2026 02:51:14 GMT  
		Size: 7.4 MB (7405449 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:219e56ebfda7c5f7b58de951344444d6da991c71b25263765797984819d02bc0`  
		Last Modified: Tue, 04 Aug 2026 02:51:13 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:38c8fc0bb76272e7e26c07839336d5793a338d4409fa0d413235e08e46c59238
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263671825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43c9e848a8f159353b0d4dc75690c532b6f440fc85b3a7baf42ba0ced9825358`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:50:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:50:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:50:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:50:58 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:50:58 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:51:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:51:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:51:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:51:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:51:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e760b79cc654f0673f09b1c9bc6d7477fb7640a8512de431e26f4c9818ec2d5c`  
		Last Modified: Tue, 04 Aug 2026 02:51:34 GMT  
		Size: 144.7 MB (144724288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7835c5ff5127ae949d23961377973c13ab62b9b889614b01faf5a6cfdfe7d085`  
		Last Modified: Tue, 04 Aug 2026 02:51:33 GMT  
		Size: 66.7 MB (66685608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b48949bc389227968585bc1cf4137748fd0f5f8bc5e5e19e692e85e61bc86f`  
		Last Modified: Tue, 04 Aug 2026 02:51:30 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a48c6671e6562cff6d48925c159a0420f70a585bad623acf60712d7817a5115a`  
		Last Modified: Tue, 04 Aug 2026 02:51:30 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:c8686c4bc63bed65be4a6610ad4475271f4b50500fd8877031c07e6dc6544471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7426597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:268cf2176911111f929da6ad28137aa723b8ac2a785e5aab06f81ceaeab6d07b`

```dockerfile
```

-	Layers:
	-	`sha256:829522c1b8598ba74c5884afe07d8df42ea63e42c20d1203c1371374558b6a2e`  
		Last Modified: Tue, 04 Aug 2026 02:51:30 GMT  
		Size: 7.4 MB (7410548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c956e36abdd753275258e31081ebc96c0e2cb61c60b64991a6a8cb641d50c9f6`  
		Last Modified: Tue, 04 Aug 2026 02:51:30 GMT  
		Size: 16.0 KB (16049 bytes)  
		MIME: application/vnd.in-toto+json
