## `clojure:temurin-21-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:60e90cc01b767134f1fddffe1befefd577619d894c84e562b50eb9b114760124
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:c4b6b18fa89be22d5dd65f9196604197ae81e0a28806ac5d1002bd4d836abe1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 MB (284939202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd80dad7bbf6b8fe05c376b2462d38de1d22b68c2c1d3a90fe37bd57328f34a2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:08:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:08:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:08:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:08:21 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:08:21 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:08:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:08:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:08:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:08:36 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:08:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9c67f211d08da35bad42d147b9b5256046c16cd2924fec4986d84ab07ae970`  
		Last Modified: Thu, 19 Nov 2026 22:08:59 GMT  
		Size: 158.4 MB (158409433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bde38e35223727341982c2932c2c796c4500c22ce233499f92e8728803cd707`  
		Last Modified: Thu, 19 Nov 2026 22:08:59 GMT  
		Size: 78.0 MB (78001740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6584bd83c0203584ee42a99d6bc2c1614e330363aaf9a9d6d83d9dacf3b47c68`  
		Last Modified: Thu, 19 Nov 2026 22:08:55 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e6c1fa8d03db0b4278fd9950414443e0c12884a258d748b40b60375fb55780f`  
		Last Modified: Thu, 19 Nov 2026 22:08:55 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:bd67531e2ea51b04b03be7392c36684c5ab435556189180894dbcf9dd23b5f17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6dbecc37b2e81bd3e82e45f59d5dad5ddaaee75842a0727c93b5e288844d1fe`

```dockerfile
```

-	Layers:
	-	`sha256:8873ad05c1f97ae7268a5c9079be3ea9e763973a93dee7c90abaa9804d770a7a`  
		Last Modified: Thu, 19 Nov 2026 22:08:56 GMT  
		Size: 7.4 MB (7381171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:264abbae7e7605884c6c698a464d21c6dc8cc70f8df754f22aae2f0e552da5e1`  
		Last Modified: Thu, 19 Nov 2026 22:08:55 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f0311c409d6437199dc9b8befdda93f09608fdb8cdb93fe1e1ef222ee01d3bf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.1 MB (283102961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b92f4d66b3a71127b82dc3321311ff48937e81bd9d4afb5e805a70e66d22726`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:07:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:07:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:07:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:07:30 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:07:30 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:07:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:07:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:07:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:07:45 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:07:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cba452040924d84fc45c12afe9c1a2513a114e3809cf59c3449c7391901fec`  
		Last Modified: Thu, 19 Nov 2026 22:08:10 GMT  
		Size: 156.7 MB (156691655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3117cf52db5dc8743f5593d1b8d1379af807659a914598c69b27159b146d1a21`  
		Last Modified: Thu, 19 Nov 2026 22:08:09 GMT  
		Size: 78.0 MB (77997308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b115cb5d1516487571a5123e0cf118429691eac0b5102dea442a701aa486c8c`  
		Last Modified: Thu, 19 Nov 2026 22:08:03 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d83c047f71ca9155457992443f71806bd5764b20b0d6b4954229f594ca4c6b`  
		Last Modified: Thu, 19 Nov 2026 22:08:03 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a85bf26ea178bbca6ecd2dde8d258e913ae248106895a6d654aeca4e5b20604e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7403716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ea2fbce84a1d4b987274422b24d95643fd3db8e66896b59414054dd392e6d8`

```dockerfile
```

-	Layers:
	-	`sha256:63a0c000d1000c44eb7f48fe3b965db5655dc576ab502a0beed765b81c807478`  
		Last Modified: Thu, 19 Nov 2026 22:08:06 GMT  
		Size: 7.4 MB (7386958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a172a7e413c07396466dd91394aff422bac8165ddd2812db11d85d9853da4f6`  
		Last Modified: Thu, 19 Nov 2026 22:08:06 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:18edc27083afe69a411111d855799acd5080b74ebe6cca5a1463785bc61c5898
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.8 MB (293767391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14cfbce936194853c36974b82424809956cba6744558e1b3c212f104e65adb66`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:47:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:47:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:47:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:47:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:47:47 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:57:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:57:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:40:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:40:40 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:40:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43000e10f4cba449859ab339e1e184da2141ac608835cc850c77c1331117815d`  
		Last Modified: Thu, 05 Nov 2026 15:51:45 GMT  
		Size: 157.6 MB (157573237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4020661d5ac1d0d2b43b50067bdd8130b4f410efad0f84d87083bc4d5423868`  
		Last Modified: Thu, 05 Nov 2026 15:58:39 GMT  
		Size: 83.8 MB (83823989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e140ddc15ed731608bf90c15647c4638a5ab5ff5d7aba112ab1822c6e0f8b462`  
		Last Modified: Thu, 05 Nov 2026 15:58:37 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b7fe40fb61d0a1bcf0dc571a183254c9d632d53705babfa6c8e4234277edfc6`  
		Last Modified: Tue, 10 Nov 2026 02:41:08 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4dcd9c3d0d2ee5d3dcd87bbb8057360a0b11f74622e38ae5d09c6d2138661bfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a34864d03b7cff2554855d7de18f80f54dfb390b8416dc61a7119266c686ded`

```dockerfile
```

-	Layers:
	-	`sha256:fc940aa778f7261758279272ca60f3562e193869a4febb3640db6f1c4ec123f5`  
		Last Modified: Thu, 12 Nov 2026 08:34:30 GMT  
		Size: 7.4 MB (7385147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9ef083c14c65f36b11cf1616dc050df5b1cd9d1a349156419bf9e3dc0d6fbeb`  
		Last Modified: Thu, 12 Nov 2026 08:34:30 GMT  
		Size: 16.7 KB (16676 bytes)  
		MIME: application/vnd.in-toto+json
