## `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye-slim`

```console
$ docker pull clojure@sha256:3d4d99eee53964dfff6b6c348df87bb8ba7778a57cfa8ac918dfb1463da7146d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a7796039736c0b18a874e75794a8e727b3c144490f43dd624d6fb5a81da96114
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.3 MB (232271879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53dc980cf7d2e73f39ae01c7e7779cc7d52e78cf5ff05c6a5913439168d88253`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:21:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:21:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:21:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:21:16 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:21:16 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:21:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:21:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:21:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:21:28 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:21:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5185aa30138b03141a27de6b769afe31073b9618afbcf8a96938cb155d1122`  
		Last Modified: Wed, 05 Aug 2026 01:21:49 GMT  
		Size: 145.9 MB (145905436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8c9fe1f0b9376af7a1f810a76be04dc4277fe82e0573f9d0b524116203a703`  
		Last Modified: Wed, 05 Aug 2026 01:21:48 GMT  
		Size: 56.1 MB (56105782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:671ae92a2dc318e3fe33686a66fa6314e90af455748513f516ca70e8c0884db8`  
		Last Modified: Wed, 05 Aug 2026 01:21:45 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df22865fc45da89fcd457e5dbfa59f02decd3df40740b6f0347593b3c8f26756`  
		Last Modified: Wed, 05 Aug 2026 01:21:45 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:418af5a5f03a64b78934ca34b398747a515ba030bec1e61ecfde628dac7a9a89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5333839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d707a990a5054fccfcd6d57ba8680db8b86898c587aa192fc75a716d06f7adf`

```dockerfile
```

-	Layers:
	-	`sha256:9ba891f7bbeb40f1644ce78cbb8172657303c7c243ee936b5b5c9d1182b623c6`  
		Last Modified: Wed, 05 Aug 2026 01:21:45 GMT  
		Size: 5.3 MB (5317849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5525b97152a4586ba98b0fe37534a9a61c3c26068ceeb82d01a546c44793c79`  
		Last Modified: Wed, 05 Aug 2026 01:21:45 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6b3613c0f1801414c2d49bf7a9620a6e773eb302c7059775d7a593f06dd960da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229750309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b846333bea12dcab67cb6dbd4c203df25d3185bfd739e77c80328934596bc2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:27:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:27:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:27:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:27:13 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:27:13 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:27:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:27:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:27:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:27:27 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:27:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b9a2743ef62a4d4d084877f34ad63322444f91be54c5041c4847d274bac732b`  
		Last Modified: Wed, 05 Aug 2026 01:27:49 GMT  
		Size: 144.7 MB (144724288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a0bd909355647faa9fd3b69def21da5e426f521960f0f37810d31d9ed7c0507`  
		Last Modified: Wed, 05 Aug 2026 01:27:47 GMT  
		Size: 56.3 MB (56276077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59d438219a6d08fb6399810f6b060b29db8e448034a205f8907817a982869be9`  
		Last Modified: Wed, 05 Aug 2026 01:27:45 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2e1dabc35e95b9bf45bbeaaa75df71533f6c20de9c43303f20d0751884316f`  
		Last Modified: Wed, 05 Aug 2026 01:27:45 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b20a6f5c7b06cd21068855b32d4c05aa1b83aadba5d449e2202e060874d03212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5339689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b45f4c0bbc2f265dc260c1791542d8d5cc43f40b2fddce9676cdae90e613d42`

```dockerfile
```

-	Layers:
	-	`sha256:ec57d008460e81d8e5ed5e9c3678922cad9b94e39feb9b4fe4dc2baa06956cdc`  
		Last Modified: Wed, 05 Aug 2026 01:27:45 GMT  
		Size: 5.3 MB (5323581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfeb5569454a8849f5498508903d4caf559df1f88bf8ad388b87897d00d93f74`  
		Last Modified: Wed, 05 Aug 2026 01:27:45 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json
