## `sapmachine:17-jre-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:65209e451ded9de287f7f2fbde1b39713e8c7ea1e74226a362d161b4fce887a2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jre-headless-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:fbac3c5628ac17341b6f69a545cfda8ba5c72463c39e3e3645620e10dab94b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.2 MB (86179599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99ec2c60a69946fb4abda82161612dc3cffc91754684084f9f021eddaa90d0b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 16:42:41 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.21.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 18 Nov 2026 16:42:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54ce644493f967e375bc525f02a04739d5210ac024e93b0ad9ff32df963ef3d3`  
		Last Modified: Wed, 18 Nov 2026 16:42:54 GMT  
		Size: 56.4 MB (56386376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e8be5441d14f85ff75823151084b7b1bd818c2976343e87659f236f5488f3b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86e83358fee889c9f8422d77925a6a244a5297d749b311cd753122b7c57715f5`

```dockerfile
```

-	Layers:
	-	`sha256:c7c0513655e7ce133e0f0a6de93364b8a3467bb0e4f433c8534afe018c0a4c9b`  
		Last Modified: Wed, 18 Nov 2026 16:42:52 GMT  
		Size: 2.3 MB (2274974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:357d7ef1d6e194fcbc322e1257575eabc61b652e6a1a73260ba77733276b3b50`  
		Last Modified: Wed, 18 Nov 2026 16:42:52 GMT  
		Size: 11.0 KB (10951 bytes)  
		MIME: application/vnd.in-toto+json
