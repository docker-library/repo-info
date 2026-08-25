## `clojure:tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:4aec2d7601817dcdd4334fa84b40bc92786fcf2762b4921d4ee1ad530ce15f15
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:954b64dfefc60169174266bc51480c77ebb506fa268bee790acb3215f7a021ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (178990585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8433345c6ad1a74c6558e7ce9a4a29797d3d342b77076434d1bb09163ea07c91`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:31:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:31:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:31:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:31:33 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:31:33 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:31:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:31:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:31:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:31:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:31:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4705738e5e0492efae5d2523aa791e06c852e2e1acb5e70a365cc08f9da0c556`  
		Last Modified: Mon, 24 Aug 2026 23:20:36 GMT  
		Size: 30.3 MB (30259727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ccfe47735cd9aeeef4239bfc4bc7589fe8893ee7a480adb1385f67d9b9422f4`  
		Last Modified: Tue, 25 Aug 2026 01:32:06 GMT  
		Size: 92.6 MB (92615119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ea72a0a28a38a2e2e999a4f11308951a34d1a5b719f7f01817bdc06d0eebb24`  
		Last Modified: Tue, 25 Aug 2026 01:32:05 GMT  
		Size: 56.1 MB (56114696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b5a86f4771e10b97115d9e353f31a413126294d7c33ac8be6e2c5cf060d2dc`  
		Last Modified: Tue, 25 Aug 2026 01:32:03 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08afaa04d95f8826d5dd26045e40584bb0672bd5ca83d7c1aa22fbaa75b290da`  
		Last Modified: Tue, 25 Aug 2026 01:32:03 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6d248ee611a5ba5ff329cb3c270966c416f53a2de22b34019c04a3d3e2e24170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5307821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14242468f7f1210076b2a1c0c9e09f513c57020c1a171bb8bd5b9bbd17708bc4`

```dockerfile
```

-	Layers:
	-	`sha256:5a8e21895622a0341a8a18bf2608db42abda8b8260445c2304fe07ec9a1caf8f`  
		Last Modified: Tue, 25 Aug 2026 01:32:03 GMT  
		Size: 5.3 MB (5291142 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b5a3f7cc25976c6942887a2b332bf9cec47f7ad1c525ccdb3395465730ffe5c`  
		Last Modified: Tue, 25 Aug 2026 01:32:02 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ec6697ecff3a09f13125a14cf9c0f99e17ea3fe55bbeea53e59691dac343daa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176563585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54481aee96d7c1f75da6a4e8a745d67968d061b5152c9b44dd124b19b550baf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:35:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:35:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:35:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:35:52 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:35:52 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:36:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:36:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:36:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:36:05 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:36:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:104799d4ff5b18bad31a13cbbc383730eebef29a1cac161b7905792a8dbe5bd3`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 28.7 MB (28749031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2b9ea3fdb3ab39b302bff0d922a20c9188433c1ebcc21942df7c2317275a677`  
		Last Modified: Tue, 25 Aug 2026 01:36:26 GMT  
		Size: 91.5 MB (91532219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1601ba32e88cfe5de2612a3cc2e618216d7bab68ed86021fa1d9dd3dc25ea6b5`  
		Last Modified: Tue, 25 Aug 2026 01:36:25 GMT  
		Size: 56.3 MB (56281293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c718463d16c638670552b550adef58e359292d0c40adbc23c549443a1d74ee2`  
		Last Modified: Tue, 25 Aug 2026 01:36:22 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c3ed301f2f8c27e527f46991686eed766c305382c11779b42eb10b41e6a9c5b`  
		Last Modified: Tue, 25 Aug 2026 01:36:22 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ad2a1847cb1f58bfc331986cb8e3522a3385dcd4e46b789e0ff72a85fc385634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5313716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ce437ac4efe2a4adb36b8699a0f78be8743e8cf77c100e3729c46128051c0c7`

```dockerfile
```

-	Layers:
	-	`sha256:c1f035ae28275d22914ae3d525b60d66629d5cc622c7c27ca02bb0c2ca6e656b`  
		Last Modified: Tue, 25 Aug 2026 01:36:22 GMT  
		Size: 5.3 MB (5296895 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5dbec0e0e8e965ceaeffde94f999ac9baa47563b7cee8034efd7271d5a34c1b7`  
		Last Modified: Tue, 25 Aug 2026 01:36:22 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json
