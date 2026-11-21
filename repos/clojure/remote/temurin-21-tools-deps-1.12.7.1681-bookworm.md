## `clojure:temurin-21-tools-deps-1.12.7.1681-bookworm`

```console
$ docker pull clojure@sha256:93332755616197432f2f665152fe74828ee745e7cd741832d010d45fd394dc75
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.7.1681-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:dbd4c33fcc6feb925d5d8dc855edc10afcf24841d52a76803fffbefad51e8f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.0 MB (284970423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9ef9453a5861099369a9668291f12d7a49e6b1837660fabefe80c7e34ce9dd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 18:10:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:10:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:10:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:10:17 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 18:10:17 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:10:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 18:10:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 18:10:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:10:32 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:10:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d43028c147b435243283e0230ea4c77609c570cf89f3f85b81512881d24897e`  
		Last Modified: Fri, 20 Nov 2026 18:11:00 GMT  
		Size: 158.4 MB (158440960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29a72e3c39a5863cefb85170d63835b152c3a205979f507a3b823b4fce19a981`  
		Last Modified: Fri, 20 Nov 2026 18:10:59 GMT  
		Size: 78.0 MB (78001435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c40a04d891f20146748e36d09d6a8644e3001fc20d1f570cff5c5635df6280a2`  
		Last Modified: Fri, 20 Nov 2026 18:10:56 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a97ceb94f1f9deac669d78402d980987ba37e9d4f79f283952e8803ce3cc6b4e`  
		Last Modified: Fri, 20 Nov 2026 18:10:56 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:211c05bf5fccb1bd8503e8eb1db95e440ad30a9e7dc752185b17d963b3d216f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa3f71092c3141b33121aa6594e89d56fbd719b44d4936e041a02525fdf474d8`

```dockerfile
```

-	Layers:
	-	`sha256:de23098daee93dc7f1bcbf85a9784a93caa87ddc8aecb94bb1c37749c9f6709c`  
		Last Modified: Fri, 20 Nov 2026 18:10:56 GMT  
		Size: 7.4 MB (7381179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0510caf8191e9d4bfa751e9fd33b44668d3dac82dc32a83d634bfc6bba9a7f25`  
		Last Modified: Fri, 20 Nov 2026 18:10:56 GMT  
		Size: 16.6 KB (16615 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.7.1681-bookworm` - linux; arm64 variant v8

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

### `clojure:temurin-21-tools-deps-1.12.7.1681-bookworm` - unknown; unknown

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

### `clojure:temurin-21-tools-deps-1.12.7.1681-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:362f83b34d81bf59f5488bd23c2414aa25d6ad31949cc7a26f355cd4f57491e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.8 MB (293790745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8c92afc460d754414b4eacae3371032c33e333bab6a0c702269d051e4d1c44a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:29:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:29:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:29:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:29:05 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:29:05 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:41:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 19:41:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 19:41:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:41:43 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:41:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d4c73842b77997ed6979b59882f09ac83706e753b8cbfa2a63803a48b127e6`  
		Last Modified: Fri, 20 Nov 2026 19:33:05 GMT  
		Size: 157.6 MB (157596488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da729501a8d201c75ced06adc8585101d7650a75621e0ed56f9180887078b1d3`  
		Last Modified: Fri, 20 Nov 2026 19:42:32 GMT  
		Size: 83.8 MB (83824090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f526c43cb4b19ed982640668f6078698d279bebaf6ca3972f65b9b7aaf14d0d`  
		Last Modified: Fri, 20 Nov 2026 19:42:30 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c6cf834b6339fee1ba249d2e932eff503c0abba0f678bd5b9a5b1b37bcf18e`  
		Last Modified: Fri, 20 Nov 2026 19:42:30 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:3e0ede40d8046e53666654e447bc84dbbba83b8f0759e475a87a5cf62d38811c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:948a591a04c5e760e544f96789a20f9d886328f05eb590c2d79cd3df4cc88590`

```dockerfile
```

-	Layers:
	-	`sha256:98506c696cb3ea16e6f936fb2f0a394ff457cf55119a173eba9c933e3d4a9b08`  
		Last Modified: Fri, 20 Nov 2026 19:42:30 GMT  
		Size: 7.4 MB (7385157 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9dfa782b57be0e7673b6ad8d73d07f665e4fe0c2bfd6f86ceff32cb9d6d555e`  
		Last Modified: Fri, 20 Nov 2026 19:42:30 GMT  
		Size: 16.7 KB (16676 bytes)  
		MIME: application/vnd.in-toto+json
