## `clojure:temurin-25-tools-deps-1.12.7.1681-bookworm`

```console
$ docker pull clojure@sha256:cb108e14c5f4533de86a746777053b6fa3768a93d8f38acc52b354a7b982243f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-1.12.7.1681-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:60fb1eeeda15807556378f3c9aa2906834041e2e9afcdf0807d3004d3725d087
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219143162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c492f2e12dc90876d9675933539ed3631e9453b7da9842e2ae9bebbd0f5c3d32`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:07:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:07:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:07:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:07:55 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:07:55 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:12:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:12:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:12:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:12:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:12:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1f86cc6df21e1bcfc40f116baac5a26cd6cc1cbccca3a93e266ece0f2a2397c`  
		Last Modified: Tue, 24 Nov 2026 05:09:49 GMT  
		Size: 92.6 MB (92613960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faaf241f1cf7038fbd757745e621faa98179ebfa78894deae9b2b96fce53667f`  
		Last Modified: Tue, 24 Nov 2026 05:12:57 GMT  
		Size: 78.0 MB (78001284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b96eb895406c3b2c1f7d716047c3f4bc39be1a3b91afb87468f7e4ecd0bb215`  
		Last Modified: Tue, 24 Nov 2026 05:12:55 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a66561aa0a19c5389eb50885dab25c47da01868bc83c07dcad7f3702acc74436`  
		Last Modified: Tue, 24 Nov 2026 05:12:54 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f6fd41bcba49d5ab76da7631e88abe20f062149e2f7533ec8231f466081460ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7365011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a50df9d1c3bcdfbd47ec14b1f97376b5e23c478a3269f23fa33705a2f28829`

```dockerfile
```

-	Layers:
	-	`sha256:5fe33f23ae2ce98891850a7786fdfd43bd68bb2cf5459f744280a3345c30ae55`  
		Last Modified: Tue, 24 Nov 2026 05:12:55 GMT  
		Size: 7.3 MB (7348039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed6f75a517f9650ece799d180d5965fe677c938b51d5353d58516542ecdd0959`  
		Last Modified: Tue, 24 Nov 2026 05:12:54 GMT  
		Size: 17.0 KB (16972 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.7.1681-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9f8d88a7226cf810f4852990d48c842ea94741aa6b1900157c54a059cbb85806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (217966083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a527757a30a722fa71216c9f64521af57a8a39f82b0d93cce59c346007ebb9fa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:18:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:18:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:18:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:18:25 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:18:25 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:18:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:18:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:18:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:18:41 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:18:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a8fd079cd353bc8559fdecc81fa36e863fbca4caf5f29d371019f5af9bf42e`  
		Last Modified: Tue, 24 Nov 2026 05:19:03 GMT  
		Size: 91.6 MB (91553945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd17a04868d3d69597d324f0ca5f371608717c888d5e1cdd210c5ac831dfb59`  
		Last Modified: Tue, 24 Nov 2026 05:19:03 GMT  
		Size: 78.0 MB (77998343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c3bd4c79b23917b349423fe0a777f8b6ae3b3f71b82c65526e8b4ad5e87a427`  
		Last Modified: Tue, 24 Nov 2026 05:19:00 GMT  
		Size: 608.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d13051d321b7f6fe16510d6974dc8030360838bd625ad3c657da2969c832757`  
		Last Modified: Tue, 24 Nov 2026 05:19:00 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:bf30f91b244bb6aae569d81b09709f2dba2de51fced1d2b4e1567cf8630bad3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7371986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeee2384808faed763b81b308af8587701aefe688a05656fefe3cdd46acd0b3c`

```dockerfile
```

-	Layers:
	-	`sha256:3dc1792eb33bcb61ab1fb79fe0026608d28431711864325d62002301b0dd4a6b`  
		Last Modified: Tue, 24 Nov 2026 05:19:00 GMT  
		Size: 7.4 MB (7353871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bad6aefa215db6d2caa0318d94a27ddbe78e7ab5891163ae2b1d0ffc2949382`  
		Last Modified: Tue, 24 Nov 2026 05:19:00 GMT  
		Size: 18.1 KB (18115 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.7.1681-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:a6051f1650f62fd769abc2163928dd41c206c7097d1d1125a2d7476d89c5eb49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.3 MB (226313785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5750c4727c249821243d7677337383086c14cb25d943e34935f2c841fdbd9e44`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:10:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:10:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:10:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:10:03 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:10:05 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:52:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 19:52:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 19:52:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:52:35 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:52:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b2539b6b2dd6d3dc6544d4f155eddc3332014a5921fdd1a505ffcfc835be10`  
		Last Modified: Fri, 20 Nov 2026 19:15:01 GMT  
		Size: 90.1 MB (90119588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5970fdb640a804e4702c2ad276c9f0ccc7f01d4062c2b1b974e420f18ec9120c`  
		Last Modified: Fri, 20 Nov 2026 19:53:15 GMT  
		Size: 83.8 MB (83824034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c137abc675b709ed78c475dacd61742543c4f8166d68df5f5874ab47ca3cbc9`  
		Last Modified: Fri, 20 Nov 2026 19:53:13 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0163d74d7fadbc5cd70f10d658648b14063e7c736e94daaea46b3ed110649af2`  
		Last Modified: Fri, 20 Nov 2026 19:53:13 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6be26d2c20fafe72b2279a554e33a31e3f45b50cb639f0b4d29b219488c0ce76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7be07eaaf8aca1d69a6ff7f0965b8f2440c6861baabdc04df5175c743eeb144e`

```dockerfile
```

-	Layers:
	-	`sha256:94bb44bf240df9b8a3fc9c746b84ac24a57a46b5f2e76d6ed2a9c53f754f1040`  
		Last Modified: Fri, 20 Nov 2026 19:53:13 GMT  
		Size: 7.3 MB (7334738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:539bf4721e16c0ad101a0a6fafa3db34c0794c271bf1c53efcb57196a4b50bcd`  
		Last Modified: Fri, 20 Nov 2026 19:53:12 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json
