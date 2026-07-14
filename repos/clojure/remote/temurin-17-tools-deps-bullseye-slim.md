## `clojure:temurin-17-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:62ba2481f3dc92f20f603a0c2dc92dc3715da95bf59a1d96e89e0d2d3a2c98d5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:3bafb2c74df5a46bb97edacc5b67fe02100b59d536f65226740cd43fd765e6fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.3 MB (232267442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38dddaac722c01e9c35dc398dda3c0d030b99b88908c30bc557ff6ccfaec8fa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:19:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:19:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:19:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:19:00 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:19:00 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:19:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:19:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:19:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:19:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:19:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822f519df921d47b7e7cfbb61033a567b834ad879fe36d1d6957fa629a90a9db`  
		Last Modified: Tue, 14 Jul 2026 02:19:33 GMT  
		Size: 145.9 MB (145906343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5d5cea649a230370cd730c4746c82e0c3732dcb5c5efd7d1e5722444557d3f`  
		Last Modified: Tue, 14 Jul 2026 02:19:32 GMT  
		Size: 56.1 MB (56100307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb0a70712508d7b48954348b8c549495e2f1a943e458625e58c251a4058cd9b`  
		Last Modified: Tue, 14 Jul 2026 02:19:29 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:748e2f454feae30d4f8e8a2f4ad7f9f9846ed8b3ff027c83dc8f7d44f487e763`  
		Last Modified: Tue, 14 Jul 2026 02:19:29 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:dd1d7248f181329d4c25eaec4548e0c7d0d0a1d63b465acef5def854fcfc8297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5333838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1856d40a86366bb655de945b43bcbcdd89c52c390f89405fde0ec149a9812f43`

```dockerfile
```

-	Layers:
	-	`sha256:a0a9e8a72a1a4effdad5d2116740e1f851d5a04f3f0f7942ef155c5224ba4123`  
		Last Modified: Tue, 14 Jul 2026 02:19:30 GMT  
		Size: 5.3 MB (5317849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:257369fc07913a7d15c9436ac644aa9f92a00167de489baa0068bd980961b1e3`  
		Last Modified: Tue, 14 Jul 2026 02:19:29 GMT  
		Size: 16.0 KB (15989 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e1324ef5bcc8442bf17e2b3374ecb9eefacebe0023188ff1a92024b3e27ff602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229742130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c8b7fdf50c4e9213ab1ee3ce9b8a40284be72d17a8750f14a6e3fd897845072`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:26:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:26:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:26:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:26:14 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:26:14 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:26:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:26:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:26:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:26:28 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:26:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e114d1e3a55f86575bc17c0c399e1357d020b3aa3bd9da7f4f016614da7aa547`  
		Last Modified: Tue, 14 Jul 2026 02:26:50 GMT  
		Size: 144.7 MB (144724328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c2a416389b7d6116298fb7ae10c4dee6f302ee84c1f937817cd71ea5f24489`  
		Last Modified: Tue, 14 Jul 2026 02:26:48 GMT  
		Size: 56.3 MB (56267777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76851fd2357c2031034d619ba177ed9bd7b971331041dd032ba05ce17c2ca65f`  
		Last Modified: Tue, 14 Jul 2026 02:26:46 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a542baf8759543ef295746c0c84443996febb913148f8c52bbade594f0db403`  
		Last Modified: Tue, 14 Jul 2026 02:26:46 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1e9bded4554f48ade96921cc8c1551cd3fa9ff1144e6eca3f84bb28e65ed79f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5339688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6e3bcc9b512c9d741dd4421057f9e26868d7094bab5e1cb6115fcb5a924af95`

```dockerfile
```

-	Layers:
	-	`sha256:8fcfd9f77eba977ba0e6a01c6f9dbe49aceaf803b9c24f95abbbaa349b513c9c`  
		Last Modified: Tue, 14 Jul 2026 02:26:46 GMT  
		Size: 5.3 MB (5323581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7475037c648b0c3ffa6ed3a4c83be33142a26e432a74eb9de8a40158aa3440f0`  
		Last Modified: Tue, 14 Jul 2026 02:26:46 GMT  
		Size: 16.1 KB (16107 bytes)  
		MIME: application/vnd.in-toto+json
